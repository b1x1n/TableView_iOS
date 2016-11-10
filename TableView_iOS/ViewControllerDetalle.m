//
//  ViewControllerDetalle.m
//  TableView_iOS
//
//  Created by Alumno on 08/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "ViewControllerDetalle.h"

@interface ViewControllerDetalle ()

@property (weak, nonatomic) IBOutlet UITextField* textoResultado;

@end

@implementation ViewControllerDetalle

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* nombre = _personaSeleccionada.nombre;
    NSString* apellidos = _personaSeleccionada.apellidos;
    int edad = _personaSeleccionada.edad;
    
    NSString* resultado = [NSString stringWithFormat:@"%@ %@ %d",nombre,apellidos,edad];
    _textoResultado.text = resultado;
}
-(IBAction)cerrar:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
