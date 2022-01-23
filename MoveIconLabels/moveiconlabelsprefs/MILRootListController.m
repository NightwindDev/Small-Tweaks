#include "MILRootListController.h"

@implementation MILRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.killButton = [[UIBarButtonItem alloc] initWithTitle:@"Apply"
                                    style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(respring)];
        self.navigationItem.rightBarButtonItem = self.killButton;
    }
    return self;
}

-(void)respring {
    pid_t pid;
    const char* args[] = {"killall", "SpringBoard", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

@end
