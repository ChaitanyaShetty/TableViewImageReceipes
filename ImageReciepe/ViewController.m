//
//  ViewController.m
//  ImageReciepe
//
//  Created by chaitanya on 14/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
#import "TableViewCell.h"

@interface ViewController ()



@property (assign, nonatomic) int tableIndex;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = false;
//    _titleName = @"MovieDetails";
//    self.title = _titleName;
    
    imageRecipes2 = [NSArray arrayWithObjects:@"image1.png", @"image2.png", @"image3.png", @"image4.png", nil];
    movieNames2 = [NSArray arrayWithObjects:@"jessi", @"Rocky", @"Raja rani", @"Balu", nil];
    directors2 = [NSArray arrayWithObjects:@"Pawan Wadeyar", @"S.K. Nagendra Urs", @"Atlee", @"A. Karunakaran", nil];
    musicBy2 = [NSArray arrayWithObjects:@"Anoop Seelin", @"Venkat-Narayan", @"G.V.Prakash Kumar", @"Mani Sharma", nil];
    heros2 = [NSArray arrayWithObjects:@"Dhananjay", @"Yash", @"Arya", @"Pawan Kalyan", nil];
    
    heroins2 = [NSArray arrayWithObjects:@"Parul Yadav", @"Bianca Desai", @"Nayantara", @" Shriya", nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [movieNames2 count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableIdentifier = @"TableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    if (cell == nil) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
    }
    cell.movieNames.text = [movieNames2 objectAtIndex:indexPath.row];
     UIImage *image = [UIImage imageNamed:[imageRecipes2 objectAtIndex:[indexPath row]]];
    cell.imageRecipes.image = image;
    
    
   // cell.imageRecipes.layer.cornerRadius = cell.imageRecipes.frame.size.height/2;
    cell.imageRecipes.layer.cornerRadius = 50.0;
    cell.imageRecipes.clipsToBounds = YES;
    
    


    return cell;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   // [self performSegueWithIdentifier:@"segue" sender:self];
    
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    secondViewController *table = [board instantiateViewControllerWithIdentifier:@"secondViewController"];
   // UIImage *img = [UIImage imageNamed:[imageRecipes2 objectAtIndex:[indexPath row]]];
    table.img2 = [imageRecipes2 objectAtIndex:[indexPath row]];
    table.movieName = movieNames2[indexPath.row];
    table.directors = directors2[indexPath.row];
    table.musicBy = musicBy2[indexPath.row];
    table.heros = heros2[indexPath.row];
    table.heroins = heroins2[indexPath.row];
    table.title = movieNames2[indexPath.row];
    [self.navigationController pushViewController:table animated:YES];
    
   // self.tableIndex = indexPath.row;
    
}


//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    NSIndexPath *path = [[self.tableview indexPathsForSelectedRows]objectAtIndex:0];
//    if ([[segue identifier] isEqualToString:@"segue"]) {
//        secondViewController *table = [segue destinationViewController];
//        // UIImage *img = [UIImage imageNamed:[imageRecipes2 objectAtIndex:path.row]];
//            table.img2 = [imageRecipes2 objectAtIndex:path.row];
//            table.movieName = movieNames2[path.row];
//            table.directors = directors2[path.row];
//            table.musicBy = musicBy2[path.row];
//            table.heros = heros2[path.row];
//            table.heroins = heroins2[path.row];
//            table.title = movieNames2[path.row];
//            [self.navigationController pushViewController:table animated:YES];
//
//        
//    }
//}
//
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    secondViewController *table = 
//}


@end
