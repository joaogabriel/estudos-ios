//
//  Empresa.h
//  CatalogoEmpresas
//
//  Created by João Gabriel Soares Esteves on 24/10/14.
//  Copyright (c) 2014 JoaoTech. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Empresa : NSObject {
    NSString *_nome;
    int _quantidadeFuncionarios;
}

@property (nonatomic, retain) NSString *nome;
@property (nonatomic, assign) int quantidadeFuncionarios;

@end