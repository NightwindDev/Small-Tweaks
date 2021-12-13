#import <UIKit/UIKit.h>
#import <substrate.h>

void (*orig_didMoveToSuperview)(UIToolbar *self, SEL _cmd);

void override_didMoveToSuperview(UIToolbar *self, SEL _cmd) {
	self.superview.hidden = true;

	orig_didMoveToSuperview(self, _cmd);
}

__attribute__((constructor)) static void initialize() {
	MSHookMessageEx(NSClassFromString(@"UIToolbar"), @selector(didMoveToSuperview), (IMP) &override_didMoveToSuperview, (IMP *) &orig_didMoveToSuperview);
}

/*

## LOGOS EQUIVALENT ##

#import <UIKit/UIKit.h>

%hook UIToolbar

-(void)didMoveToSuperview {
  self.superview.hidden = true;
  %orig;
}

%end

*/
