@interface CSQuickActionsView : UIView
@end

%hook CSQuickActionsView

-(void)didMoveToWindow {
	%orig;

	self.subviews[0].hidden = true;
}

%end

// Not a great method, but works, and shouldn't do any harm

%hook SpringBoard

-(BOOL)lockScreenCameraSupported {
	return NO;
}

%end