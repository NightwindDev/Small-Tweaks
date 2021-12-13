#include <UIKit/UIKit.h>

@interface BrowserToolbar : UIToolbar
@end

%hook BrowserToolbar

-(void)didMoveToWindow {
	%orig;
	self.layer.cornerRadius = 13;
	self.clipsToBounds = true;
}

%end