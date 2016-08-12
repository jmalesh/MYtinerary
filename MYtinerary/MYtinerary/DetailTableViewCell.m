//
//  DetailTableViewCell.m
//  MYtinerary
//
//  Created by Sung Kim on 8/9/16.
//  Copyright © 2016 Sung Kim. All rights reserved.
//

#import "DetailTableViewCell.h"

@interface DetailTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentsLabel;

@end

@implementation DetailTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void)setImage:(UIImage *)image {
    self.imgView.image = image;
}

-(void)setDate:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];
    [dateFormatter setDateFormat:@"EEE, d MMM yyyy HH:mm:ss z"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSString *stringedDate = [dateFormatter stringFromDate:date];
    
    self.dateLabel.text = stringedDate;
}

-(void)setTitle:(NSString *)title {
    if (title) {
        self.titleLabel.text = title;
    }
}

-(void)setComments:(NSString *)comments {
    if (comments) {
        self.commentsLabel.text = comments;
    }
}

@end
