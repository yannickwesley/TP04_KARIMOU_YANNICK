/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package comptebancaire.gestionnaires;

import comptebancaire.modeles.CompteBancaire;
import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author kykwy
 */
@Stateless
public class GestionnaireCompteBancaire {

    @PersistenceContext
    private EntityManager em;
    
    public CompteBancaire creerCompteBancaire(String firstName, String lastName, String accountNumber, double balance){
        CompteBancaire c = new CompteBancaire(firstName,lastName,accountNumber,balance);
        em.persist(c);
        return c;
    }
        public Collection<CompteBancaire> getAllBankAccount() {
        // Exécution d'une requête équivalente à un select *
        Query q = em.createQuery("select cb from CompteBancaire cb");
        return q.getResultList();
    }
    
    
}
