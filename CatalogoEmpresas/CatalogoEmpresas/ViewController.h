//
//  ViewController.h
//  CatalogoEmpresas
//
//  Created by João Gabriel Soares Esteves on 24/10/14.
//  Copyright (c) 2014 JoaoTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSMutableArray *catalogo;
}
@property (weak, nonatomic) IBOutlet UITextField *nomeField;
@property (weak, nonatomic) IBOutlet UITextField *quantidadeField;
@property (weak, nonatomic) IBOutlet UILabel *sucessoLabel;
- (IBAction)incrementadorAlterado:(id)sender;
- (IBAction)salvar:(id)sender;

@end

