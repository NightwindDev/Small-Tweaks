@import UIKit;


static NSInteger SliderLabel;


@interface SBIconLegibilityLabelView : UIView
- (id)_viewControllerForAncestor;
@end



%hook SBIconLegibilityLabelView

- (void)setFrame:(CGRect)frame {

	UIViewController *ancestor = [self _viewControllerForAncestor];

	if (![ancestor isKindOfClass:%c(SBHLibraryPodFolderController)]) {

		frame = CGRectMake(0, SliderLabel, self.superview.frame.size.width, self.superview.frame.size.height);

		%orig(frame);

	} else {
		%orig;
	}

}

%end



%ctor {

	__block NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.nightwind.moveiconlabelsprefs"];

	NSInteger (^intForKey)(NSString *, NSInteger) = ^(NSString *key, NSInteger def) {

		return ([prefs objectForKey:key]) ? [prefs integerForKey:key] : def;

	};

	SliderLabel = intForKey(@"SliderLabel", 30);

}