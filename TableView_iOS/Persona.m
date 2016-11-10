//
//  Persona.m
//  TableView_iOS
//
//  Created by Alumno on 08/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "Persona.h"

@implementation Persona

-(id)initConNombre:(NSString *)nombre conApellidos:(NSString *)apellidos conEdad:(int)edad{
    if(self=[super init]){
        _nombre = nombre;
        _apellidos = apellidos;
        _edad = edad;
    }
    return self;
}

@end
