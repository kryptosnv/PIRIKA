//
//  GroundedTableViewController.m
//  PIRIKA
//
//  Created by katsura on 2013/11/28.
//  Copyright (c) 2013年 katsura. All rights reserved.
//

#import "GroundedTableViewController.h"
#import "TFTCPConnection.h"
#import "AppDelegate.h"

@interface GroundedTableViewController ()

@end

@implementation GroundedTableViewController
{
    AppDelegate *_appDelegate;
    ArgumentFrameView *_af;
    BOOL _result;
    BOOL _complete;
    NSArray *_nodeNum;
    dispatch_semaphore_t _semaphore;
}

- (id)initWithStyle:(UITableViewStyle)style frame:(ArgumentFrameView *)af
{
    self = [super initWithStyle:style];
    if (self) {
        _appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        _af = af;
        _semaphore = dispatch_semaphore_create(0);
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _complete = NO;
    _result = NO;
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *ip = [appDelegate.data objectForKey:@"ip"];
    NSString *port = [appDelegate.data objectForKey:@"port"];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        TFTCPConnection *conn = [[TFTCPConnection alloc] initWithHostname:ip port:[port intValue] timeout:30];
        if([conn openSocket]){
            NSLog(@"openSocket success");
            NSMutableString *mes = [NSMutableString string];
            [mes appendFormat:@"%@$",[appDelegate.data objectForKey:@"userName"]];
            [mes appendFormat:@"%@",[appDelegate.data objectForKey:@"roomSubject"]];
            [conn writeData:mes protocol:4001];
            
            NSMutableData *data = [NSMutableData data];
            [conn readData:data];
            [conn closeSocket];
            if ([data length]!=0) {
                NSString *text = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"%@",text);
                if ([text isEqualToString:@"[[]]"]) {
                    _result = NO;
                }else if([text isEqualToString:@"Not_Completed"]){
                    _complete = YES;
                }else{
                    _result = YES;
                    text = [text substringWithRange:NSMakeRange(2, text.length-3)];
                    _nodeNum = [text componentsSeparatedByString:@","];
                }
            }
        }
        dispatch_semaphore_signal(_semaphore);
    });
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    dispatch_semaphore_wait(_semaphore, DISPATCH_TIME_FOREVER);
    while(dispatch_semaphore_wait(_semaphore, DISPATCH_TIME_NOW))
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1f]];
    
    static NSString *CellIdentifier = @"Grounded";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    if (_result) {
        cell.textLabel.text = @"Grounded 1";
    }else if(_complete){
        cell.textLabel.text = @"Not Completed";
    }else{
        cell.textLabel.text = @"No Result";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_result) {
        [_af resetColor];
        [_af changeColor:_nodeNum];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
