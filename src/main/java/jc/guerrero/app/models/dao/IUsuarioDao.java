package jc.guerrero.app.models.dao;

import jc.guerrero.app.models.entity.Usuario;
import org.springframework.data.repository.CrudRepository;

public interface IUsuarioDao extends CrudRepository<Usuario, Long> {

    Usuario findByUsername(String username);
}
