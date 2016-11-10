//
//  DataSourceTablaPersonas.m
//  TableView_iOS
//
//  Created by Alumno on 08/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "DataSourceTablaPersonas.h"
#import "Persona.h"

//Esto seria como el adapter de android
@implementation DataSourceTablaPersonas

//Implementamos el métodos
//obligatorio
//va a generar las distintas celdas de nuestra tabla
//Si en array personas tenemos por ejemplo tres personas, estaríamos llamando a este método 3 veces.
//En indexPath tenemos la posicion de la fila que estemos pintando
//indexPAth no es un entero es mas complejo
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //tenemos que devolver un tipo de dato UITableViewCell para ello:
    //Si las celdas se muestran todas igual(porque podemos hacer que sean diferentes)
    static NSString* idCelda = @"celda";
    UITableViewCell* celda = nil;
    
    //Con esta linea estamos preguntando si hay alguna celda con un id libre. Sirve para hacer scroll y no tener capada la memoria.
    celda = [tableView dequeueReusableCellWithIdentifier:idCelda];
    if(celda ==nil){
        celda = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCelda];
        //reservamos la memoria donde la vamos a crear,y estamos generando un objeto UITableViewCell con un estilo por defecto, y tiene un identificador celda porque es el idCelda que le he pasado,
    }
    
    
    //Con esto sacamos la posicion que esta entrando
    NSInteger posicion = [indexPath row];
    Persona* persona = [_arrayPersonas objectAtIndex:posicion];
    celda.textLabel.text = persona.nombre;//si queremos que muestre mas cosas tenemos que concatenarlo aqui.
    
    return celda;
}

//obligatorio de implementar
//Devuelve el numero de filas que tenemos
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayPersonas.count;
}

//Devuelve el titulo de la tabla y no es obligatorio
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Tabla Personas";
}

-(Persona*)personaAt:(long)posicion{
    Persona* p = _arrayPersonas[posicion];
    return p;
}

@end
