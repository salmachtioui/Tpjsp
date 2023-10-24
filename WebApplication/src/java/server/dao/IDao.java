/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server.dao;

import java.rmi.Remote;

import java.util.List;
import server.entites.Machine;
import server.entites.Salle;

/**
 *
 * @author hp
 */
public interface IDao<T> {

    boolean create(T o)  ;

    boolean update(T o)  ;

    boolean delete(T o)  ;

    T  findBy(int id)  ;
T findById (int id) ;
    List<T> findAll()  ;
List<T> findBySalle (Salle salle) ;
  
}

