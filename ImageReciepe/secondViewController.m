//
//  secondViewController.m
//  ImageReciepe
//
//  Created by chaitanya on 14/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // self.navigationController.navigationBar.topItem.title = @"Back";
   
    
    _imageview2.image = [UIImage imageNamed:_img2];
    
    NSMutableString* text = [[NSMutableString alloc]init];
    
    [text appendString:_movieName];
    [text appendString:@"\n"];
    [text appendString:_directors];
    [text appendString:@"\n"];
    [text appendString:_musicBy];
    [text appendString:@"\n"];
    [text appendString:_heroins];
    [text appendString:@"\n"];
    [text appendString:_heros];
    
    _textView.text = text;
    
    // Do any additional setup after loading the view.
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    
//    [[self navigationItem] setTitle:@""];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
