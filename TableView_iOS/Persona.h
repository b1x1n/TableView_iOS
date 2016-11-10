//
//  Persona.h
//  TableView_iOS
//
//  Created by Alumno on 08/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject

@property NSString* nombre;
@property NSString* apellidos;
@property int edad;

-(id)initConNombre:(NSString*)nombre conApellidos:(NSString*)apellidos conEdad:(int)edad;

@end
