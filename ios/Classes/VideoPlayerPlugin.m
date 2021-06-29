#import "VideoPlayerPlugin.h"
#if __has_include(<video_player/video_player-Swift.h>)
#import <video_player/video_player-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "video_player-Swift.h"
#endif

@implementation VideoPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVideoPlayerPlugin registerWithRegistrar:registrar];
}
@end
