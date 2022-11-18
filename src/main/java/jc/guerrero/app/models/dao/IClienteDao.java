package jc.guerrero.app.models.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import jc.guerrero.app.models.entity.Cliente;

public interface IClienteDao extends PagingAndSortingRepository<Cliente, Long> { //<Cliente, sería la clase y Long sería la llave o clave primaría de nuestra clase cliente

    @Query("select c from Cliente c left join fetch c.facturas f where c.id=?1")
    public Cliente fetchByIdWithFacturas(Long id);

}
