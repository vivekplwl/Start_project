//
//  SecondViewController.m
//  Start_project
//
//  Created by binary on 12/3/13.
//  Copyright (c) 2013 binary. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   
    
    UIView  *obj=[[UIView alloc]initWithFrame:CGRectMake(10, 120, 200, 200)];
    obj.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:obj];
    
    
    UIView  *objs=[[UIView alloc]initWithFrame:CGRectMake(10, 340, 200, 1)];
    objs.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:objs];
    [objs  setHidden:YES];
    
    
    UINavigationBar  *bar=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
    bar.backgroundColor=[UIColor greenColor];
    
    UINavigationItem *n1=[[UINavigationItem alloc]initWithTitle:@"vivek"];
    UINavigationItem *n11=[[UINavigationItem alloc]initWithTitle:@"vivekkkk"];
    
    UIBarButtonItem *btn=[[UIBarButtonItem alloc]initWithTitle:@"hghg" style:UIBarButtonItemStylePlain target:self   action:@selector(othermethod)];
    
    
    
   // [bar  setItems:[NSArray arrayWithObjects:n1,n11, nil]];
   // [bar  setRightBarButtonItems:[NSArray arrayWithObject:btn]];
    
    
    [self.navigationController  setNavigationBarHidden:YES];
    
    [self.view addSubview:bar];
    
    
    
    

    
  //  [self othermethod];
    
    // Do any additional setup after loading the view from its nib.
}


-(void)othermethod
{
    UIToolbar  *tlbar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 430, 320, 50)];
    
    [tlbar setBackgroundColor:[UIColor redColor]];
    
    UIImage *faceImage = [UIImage imageNamed:@"image.png"];
    UIButton  * face = [UIButton buttonWithType:UIButtonTypeCustom];
    [face  addTarget:self  action:@selector(filterclicked:)  forControlEvents:UIControlEventTouchUpInside ];
    face.bounds = CGRectMake( 0, 0, faceImage.size.width-12, faceImage.size.height-12 );
    [face setBackgroundImage:[UIImage imageNamed:@"image.png"] forState:UIControlStateNormal];
    [face setBackgroundImage:[UIImage imageNamed:@"filter1_on.png"] forState:UIControlStateHighlighted];
    UIBarButtonItem *faceBtn = [[UIBarButtonItem alloc] initWithCustomView:face];
    
    
    //  UIImage  *faceImage1 = [UIImage imageNamed:@"search.png"];
    UIButton   *face1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [face1  addTarget:self  action:@selector(SearchClicked:)  forControlEvents:UIControlEventTouchUpInside ];
    face1.frame = CGRectMake( 0, 0, faceImage.size.width-15, faceImage.size.height-15);
    [face1 setBackgroundImage:[UIImage imageNamed:@"image.png"] forState:UIControlStateNormal];
    [face1 setBackgroundImage:[UIImage imageNamed:@"search_on.png"] forState:UIControlStateHighlighted];
    face1.enabled=YES;
    
    UIBarButtonItem *faceBtn1 = [[UIBarButtonItem alloc] initWithCustomView:face1];
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:faceBtn,faceBtn1 , nil]];
    
    
    UIBarButtonItem *btn1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(vivekclk)];
    UIBarButtonItem *btn2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:@selector(vivekclk)];
    UIBarButtonItem *btn3=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(vivekclk)];
    UIBarButtonItem *btn4=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:@selector(vivekclk)];
    UIBarButtonItem *btn5=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(vivekclk)];
    
    tlbar.items =[NSArray arrayWithObjects:btn1,btn2,btn3,btn4,btn5, nil];
    
    [self.view addSubview:tlbar];
}

-(void)vivekclk
{
    NSLog(@"this is it");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
