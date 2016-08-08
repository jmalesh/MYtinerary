//
//  MapViewController.h
//  MYtinerary
//
//  Created by Olesia Kalashnik on 8/5/16.
//  Copyright © 2016 Sung Kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Itinerary.h"
#import "Record.h"

@interface MapViewController : UIViewController
@property (strong, nonatomic) Itinerary *itinerary;
@property (strong, nonatomic) NSMutableArray *assets;
@property (strong, nonatomic) NSMutableArray *thumbnails;


@end
