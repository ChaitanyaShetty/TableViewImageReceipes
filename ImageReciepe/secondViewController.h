//
//  secondViewController.h
//  ImageReciepe
//
//  Created by chaitanya on 14/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *imageview2;

@property (strong, nonatomic) IBOutlet UITextView *textView;

//-(void)getString: (NSString *)image :(NSString *)movieName :(NSString *)directors :(NSString *)musicBy :(NSString *)heros :(NSString *)heroins :(NSString *)img2;







@property (nonatomic, strong)NSString *images;
@property (nonatomic, strong)NSString *movieName;
@property (nonatomic, strong)NSString *directors;
@property (nonatomic, strong)NSString *musicBy;
@property (nonatomic, strong)NSString *heros;
@property (nonatomic, strong)NSString *heroins;
@property (nonatomic, strong)NSString *img2;

@end
