#import "RNPulsateSdkReact.h"
#import <PULPulsate/PULPulsate.h>

@implementation RNPulsateSdkReact

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
@end
  
