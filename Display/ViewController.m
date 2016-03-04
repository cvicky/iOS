//
//  ViewController.m
//  Display
//
//  Created by Vicky Chen on 3/1/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import "AddRecViewController.h"
#import "SiteValue.h"
//#import "main.m"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *websiteText;
@property (weak, nonatomic) IBOutlet UITextField *userText;
@property (weak, nonatomic) IBOutlet UITextField *pwText;
@property (weak, nonatomic) IBOutlet UITextField *countText;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SiteValue *sv1 = [[SiteValue alloc] init];
    [sv1 setWebsite: @"Gmail"];
    [sv1 setUsername: @"Frankenstein"];
    [sv1 setPassword: @"greenaboutyou"];
    [sv1 setCount];
    
    SiteValue *sv2 = [[SiteValue alloc] init];
    [sv2 setWebsite: @"Yahoo"];
    [sv2 setUsername: @"Dracula"];
    [sv2 setPassword: @"biteoutatheapple"];
    [sv2 setCount];
    
    SiteValue *sv3 = [[SiteValue alloc] init];
    [sv3 setWebsite: @"NYU"];
    [sv3 setUsername: @"Wazowski"];
    [sv3 setPassword: @"Sulley1549"];
    [sv3 setCount];
    
    SiteValue *sv4 = [[SiteValue alloc] init];
    [sv4 setWebsite: @"Amazon"];
    [sv4 setUsername: @"KateMonster"];
    [sv4 setPassword: @"Monstersorri"];
    [sv4 setCount];
    
    
    SiteValue *sv5 = [[SiteValue alloc] init];
    [sv5 setWebsite: @"AOL"];
    [sv5 setUsername: @"Chocula"];
    [sv5 setPassword: @"bad!!teeth"];
    [sv5 setCount];
    
    self.svArray = [NSMutableArray arrayWithObjects:
                               sv1, sv2, sv3, sv4, sv5, nil];
    self.index= -1;
    
    //put in default text in textbox
    self.websiteText.text= @"Website";
    
    self.userText.text= @"Username";
    self.pwText.text= @"Password";
    self.countText.text= @"Count";
    
   /* SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    secondView.SongArray = self.SongArray;
    */
   // [self.navigationController secondView animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fwdButton:(id)sender {
   if([_svArray objectAtIndex:_index+1]) {
        _index++;
        self.websiteText.text= [[_svArray objectAtIndex:_index] getWebsite];
        self.userText.text= [[_svArray objectAtIndex:_index] getUsername];
        self.pwText.text= [[_svArray objectAtIndex:_index] getPassword];
       
        //convert count to text string
        NSString* num = [NSString stringWithFormat:@"%d", [[_svArray objectAtIndex:_index] getCount]];
                                
        self.countText.text= num;

    }

}

- (IBAction)bwdButton:(id)sender {
    if(_index > -1) {
        _index--;
        self.websiteText.text= [[_svArray objectAtIndex:_index] getWebsite];
        self.userText.text= [[_svArray objectAtIndex:_index] getUsername];
        self.pwText.text= [[_svArray objectAtIndex:_index] getPassword];
        
        //convert count to text string
        NSString* num = [NSString stringWithFormat:@"%d", [[_svArray objectAtIndex:_index] getCount]];
        
        self.countText.text= num;
    }
}

- (IBAction)incButton:(id)sender {
    //increment the count
    [ [_svArray objectAtIndex:_index] incCount];
    
    //convert count to text string
    NSString* num = [NSString stringWithFormat:@"%d", [[_svArray objectAtIndex:_index] getCount]];
    
    self.countText.text= num;
}




@end
