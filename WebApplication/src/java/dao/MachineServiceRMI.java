package server.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.List;
import server.entites.Machine;
import server.entites.Salle;
/**
 *
 * @author hp
 */   
public interface MachineServiceRMI extends IDao<Machine> {
    List<Machine> findBySalle (Salle salle)throws RemoteException;
}

