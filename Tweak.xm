#import "Activator.h"

@interface ALGHActivatorListener : NSObject <LAListener>
@end

@implementation ALGHActivatorListener

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event{
	@autoreleasepool{
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Reminder" message:@"Your stuff goes here" delegate:nil cancelButtonTitle:@"Noted" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
		event.handled = YES;
	}
}

- (NSString *)activator:(LAActivator *)activator requiresLocalizedTitleForListenerName:(NSString *)listenerName{
	return @"Grandma's Helper";
}

+ (void)load{
	@autoreleasepool{
		[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.aehmlo.openro0t.grandma-helper"];
	}
}

@end