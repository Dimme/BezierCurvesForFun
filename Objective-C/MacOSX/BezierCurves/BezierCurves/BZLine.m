//
//  BZLine.m
//  BezierCurves
//
//  Created by Dimitrios Vlastaras on 1/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "BZLine.h"

#define RESOLUTION 25

@implementation BZLine


-(void)draw
{
    double now = CFAbsoluteTimeGetCurrent();
 
    double animx = sin(now)*30;
    double animy = sin(now)*10;
    
    point1 = ccp(-150.0+animx, -75.0-animy*10);
    point2 = ccp(-50.0-animx, 0.0+animy*18);
    point3 = ccp(50.0+animx, 75.0-animy);
    point4 = ccp(150.0+animx, -75.0-animy*10);
    
    CGPoint point12 = ccp((point1.x+point2.x)/2, (point1.y+point2.y)/2);
    CGPoint point23 = ccp((point3.x+point2.x)/2, (point3.y+point2.y)/2);
    CGPoint point34 = ccp((point3.x+point4.x)/2, (point3.y+point4.y)/2);
    
    CGPoint point1223 = ccp((point23.x+point12.x)/2, (point23.y+point12.y)/2);
    CGPoint point2334 = ccp((point23.x+point34.x)/2, (point23.y+point34.y)/2);
    
    CGPoint point12232334 = ccp((point1223.x+point2334.x)/2, (point1223.y+point2334.y)/2);
    
    glColor4f(0.2, 1.0, 0.2, 1.0);
    glLineWidth(6.0f);
    ccDrawCubicBezier(point1, point2, point3, point4, RESOLUTION*2);

    
    glColor4f(0.5f, 0.5f, 1.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawLine(point1, point2);
    ccDrawLine(point2, point3);
    ccDrawLine(point3, point4);
    
    glColor4f(0.5f, 1.0f, 1.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawLine(point12, point23);
    ccDrawLine(point23, point34);
    
    glColor4f(1.5f, 1.0f, 1.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawLine(point1223, point2334);
    
    
    glColor4f(1.0f, 0.0f, 0.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawCircle(point1, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point2, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point3, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point4, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point12, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point23, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point34, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point1223, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point2334, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point12232334, 5.0f, 0.0f, RESOLUTION, NO);
}

@end
