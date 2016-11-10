//
//  ViewController.m
//  TableView_iOS
//
//  Created by Alumno on 08/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "ViewController.h"
#import "DataSourceTablaPersonas.h"
#import "Persona.h"

@interface ViewController ()

@property(weak, nonatomic)IBOutlet UITableView* tablaPersonas;
@property DataSourceTablaPersonas* dstp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray* arrayPersonas = [[NSMutableArray alloc]init];
    Persona* persona1 =[[Persona alloc]initConNombre:@"Enrique" conApellidos:@"lala" conEdad:30];
    Persona* persona2 =[[Persona alloc]initConNombre:@"Amparo" conApellidos:@"lolo" conEdad:25];
    Persona* persona3 =[[Persona alloc]initConNombre:@"Ramon" conApellidos:@"lili" conEdad:23];
    [arrayPersonas addObject:persona1];
    [arrayPersonas addObject:persona2];
    [arrayPersonas addObject:persona3];
    
    _dstp = [DataSourceTablaPersonas new];//lo mismo que poner init
    
    _dstp.arrayPersonas = arrayPersonas;
    _tablaPersonas.dataSource = _dstp;
    _tablaPersonas.delegate = self;//self es una referencia al propio objeto
    
    
    //Hay que meterle a la tabla personas hay que meterle un objeto de tipo UITableViewDelegate
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Pulsada una fila y cambiamos de pantalla");
    
    long posicion =indexPath.row;
    Persona* persona = [_dstp personaAt:posicion];
    //Para mandar datos tenemos el metodo performSegueWithIdentifier y le pàsamos la pagina origen y lo que queremos pasarle
    [self performSegueWithIdentifier:@"paginaDetalle" sender:persona];
}
//Este método se va a llamar justo antes de pasar al siguiente controlador con la ventaja de que dicho objeto controlador estará creado.Será el ViewControllerDetalle.h

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //Como por este metodo entran todos los segues a los que nos dirigimos, debemos preguntar cual es el que entra.
    if([segue.identifier isEqualToString:@"paginaDetalle"]){
        //Aqui tengo que actualizar la propiedad personaSeleccionada que me he creado en el ViewControlerDetalle.h
        //Para ello obtengo el objeto ViewControllerDetalle
        NSObject* controladorDestino = segue.destinationViewController;
        [controladorDestino setValue:sender forKey:@"personaSeleccionada"];
    }
    //En caso contrario es qe no vamos a paginaDetalle e iremos a otro controlador.
}

@end
