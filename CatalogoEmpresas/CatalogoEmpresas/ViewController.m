//
//  ViewController.m
//  CatalogoEmpresas
//
//  Created by João Gabriel Soares Esteves on 24/10/14.
//  Copyright (c) 2014 JoaoTech. All rights reserved.
//

#import "ViewController.h"
#import "Empresa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _sucessoLabel.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)incrementadorAlterado:(id)sender {
    UIStepper *incrementador = (UIStepper *)sender;
    _quantidadeField.text = [NSString stringWithFormat:@"%d", (int)incrementador.value];
}

- (void)salvarEmpresa:(Empresa *)novaEmpresa {
    if (!catalogo) {
        catalogo = [[NSMutableArray alloc] init];
    }
    
    [catalogo addObject:novaEmpresa];
}

- (void)mostraCatalogo {
    NSLog(@"Listando todas as empresas");
    
    for (Empresa *e in catalogo) {
        NSLog(@"Empresa criada. Nome = %@, quantidade = %d", e.nome, e.quantidadeFuncionarios);
    }
}

- (IBAction)salvar:(id)sender {
    Empresa *e = [[Empresa alloc] init];
    e.nome = _nomeField.text;
    e.quantidadeFuncionarios = [_quantidadeField.text intValue];

    [_nomeField resignFirstResponder];
    
    [self salvarEmpresa:e];
    [self mostraCatalogo];
    
    _sucessoLabel.alpha = 0;

    [UIView animateWithDuration:1 animations:^{
        _sucessoLabel.hidden = NO;
        _sucessoLabel.alpha = 1;
    } completion:^(BOOL finalizado){
        [UIView animateWithDuration:1 delay:2 options:0 animations:^{
            _sucessoLabel.alpha = 0;
        } completion:^(BOOL finalizado) {
            _sucessoLabel.hidden = YES;
        }];
    }];
}
@end
