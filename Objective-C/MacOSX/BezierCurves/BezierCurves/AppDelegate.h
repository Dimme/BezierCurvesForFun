//
//  AppDelegate.h
//  BezierCurves
//
//  Created by Dimitrios Vlastaras on 1/14/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "cocos2d.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
	NSWindow	*window_;
	MacGLView	*glView_;
}

@property (assign) IBOutlet NSWindow	*window;
@property (assign) IBOutlet MacGLView	*glView;

- (IBAction)toggleFullScreen:(id)sender;

@end
