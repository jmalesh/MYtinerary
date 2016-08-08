//
//  ParseDataController.m
//  MYtinerary
//
//  Created by Jess Malesh on 8/8/16.
//  Copyright © 2016 Sung Kim. All rights reserved.
//

#import "ParseDataController.h"
@import Parse;



@implementation ParseDataController

//saving itinerary
- (void)saveItinerary
{
    NSString *author;
    NSString *title;
    
    PFObject *itinerary = [PFObject objectWithClassName:@"Itinerary"];
    itinerary[@"author"] = author; //USER name from PFuser
    itinerary[@"title"] = title; //text fields.text in photo picker view controller
    
    [itinerary saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (succeeded)
        {
            NSLog(@"Object has been saved");
        } else
        {
            NSLog(@"Handle error");
        }
    }];
}

- (void)saveRecords
{
    NSString *comments;
    NSDate *date;
    NSNumber *latitude;
    NSNumber *longitude;
    NSString *localImageURL;
    NSString *parseImageURL;
    NSString *parseThumbnailURL;
    NSString *title;
    
    PFObject *records = [PFObject objectWithClassName:@"Record"];
    records[@"comments"] = comments; //likely from details view controller
    records[@"date"] =  date; //photo picker view controller metadata asset
    records[@"latitude"] =  latitude; //same
    records[@"longitude"] = longitude; //same
    records[@"localImageURL"] = localImageURL; //same
    records[@"parseImageURL"] =  parseImageURL; //TBD
    records[@"parseThumbnailURL"] = parseThumbnailURL; //TBD
    records[@"title "] = title; //detail vc
    
    [records saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (succeeded)
        {
            NSLog(@"Object has been saved");
        } else
        {
            NSLog(@"Handle error");
        }
    }];
}

@end
