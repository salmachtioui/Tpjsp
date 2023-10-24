/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server.test;

import java.rmi.RemoteException;
import java.util.logging.Level;
import java.util.logging.Logger;
import server.dao.IDao;
import server.entites.Machine;
import server.entites.Salle;
import server.services.MachineService;
import server.services.SalleService;





public class test {
    public static void main(String[] args) {
        
           MachineService ms=new MachineService();
           SalleService ss=new SalleService();
            
            
            ss.create(new Salle("code1"));
            ss.create(new Salle("code2"));
            
            Salle s= ss.findBy(1);
            ms.create(new Machine("AB55","Sony",4000,s));
            ms.create(new Machine("AB66","Apple",4000,ss.findBy(2)));
            ms.create(new Machine("AB77","Acces",4000,s));

            for(Machine m : ms.findAll())
                System.out.println(m);
        
        }
    }

