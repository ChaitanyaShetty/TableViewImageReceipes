//
//  ViewController.h
//  ImageReciepe
//
//  Created by chaitanya on 14/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *imageRecipes2;
    NSArray *movieNames2;
    NSArray *directors2;
    NSArray *musicBy2;
    NSArray *heros2;
    NSArray *heroins2;

}
@property (strong, nonatomic)NSString *titleName;

@property (strong, nonatomic) IBOutlet UITableView *tableview;

@end

