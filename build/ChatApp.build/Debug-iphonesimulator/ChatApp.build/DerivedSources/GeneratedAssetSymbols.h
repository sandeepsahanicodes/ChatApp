#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"com.sandeepsahanicodes.ChatApp";

/// The "messageBubbleBgReceiver" asset catalog color resource.
static NSString * const ACColorNameMessageBubbleBgReceiver AC_SWIFT_PRIVATE = @"messageBubbleBgReceiver";

/// The "messageBubbleBgSender" asset catalog color resource.
static NSString * const ACColorNameMessageBubbleBgSender AC_SWIFT_PRIVATE = @"messageBubbleBgSender";

#undef AC_SWIFT_PRIVATE
