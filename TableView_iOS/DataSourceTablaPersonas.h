//
//  DataSourceTablaPersonas.h
//  TableView_iOS
//
//  Created by Alumno on 08/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

//#import <Foundation/Foundation.h> Sustituimos este import por el de la clase UIKit porque UIKit ya tiene la clase Foundation
#import <UIKit/UIKit.h>
#import "Persona.h"

//Esto va a ser el adaptador de Android
@interface DataSourceTablaPersonas : NSObject <UITableViewDataSource>
//El protocolo UItable tiene unos metodos


@property NSArray* arrayPersonas;

-(Persona*)personaAt:(long)posicion;
@end
