//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *unused = @"This variable generates a warning because it is unused.";
    
    NSLog(@"%@", unused);
    
    NSInteger i = 12; // Whenever you see an "Incompatible integer to pointer conversion" warning pop up, start checking your primitive variable definitions for extraneous *s.
    NSLog(@"i: %li", i);
    
    NSInteger x = i + 1;
    NSLog(@"x: %li", x);
    
    NSLog(@"Anything after the return statement will not get executed.");
    
    //return YES; // this line ends the method
    
    NSLog(@"Take note that this line doesn't print to the console.");
    
    NSString *message = @"Even though they don't belong here, the compiler won't actually complain about string literals or primitives defined outside of a method body (which is held by  curly braces {...} ), but...";
    
    NSInteger j = 0;
    BOOL itIsKnownKhaleesi = YES;
    
    NSLog(@"...any statements containing function calls, operations, or method calls will produce errors.");
    
    NSLog(@"%@", message);
    
    j++;
    
    itIsKnownKhaleesi = NO;
    
    NSMutableString *notLocal = [NSMutableString stringWithString:@"Which means the variables above, while permitted, can't be used in the way that you intend."];
    NSLog(@"notLocal = %@", notLocal);
    [notLocal setString:@"new string"];
    NSLog(@"notLocal after change = %@", notLocal);
    
    NSString *notLocal2 = @"Which means the variables above, while permitted, can't be used in the way that you intend.";
    NSLog(@"notLocal2 = %@",notLocal2);
    notLocal2 = @"new string";
    NSLog(@"notLocal2 after change = %@",notLocal2);
    
    //NSString *notLocal = @"Which means the variables above, while permitted, can't be used in the way that you intend.";
    /*
     Mutable strings can be created through the stringWithString: class method, which turns a literal string or an existing NSString object into a mutable one:
     
     NSMutableString *car = [NSMutableString stringWithString:@"Porsche 911"];
     
     After you’ve created a mutable string, the setString: method lets you assign a new value to the instance:
     
     [car setString:@"Porsche Boxster"];
     
     Compare this to NSString, where you re-assign a new value to the variable. With mutable strings, we don’t change the instance reference, but rather manipulate its contents through the mutable API.
     */
    return YES;
}


@end
