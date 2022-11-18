package jc.guerrero.app.models.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import jc.guerrero.app.models.entity.Cliente;
import jc.guerrero.app.models.entity.Factura;
import jc.guerrero.app.models.entity.Producto;

public interface IClienteService {

	/**
	 * método para listar todos los clientes
	 *
	 * @return
	 */
	public List<Cliente> findAll();

	/**
	 * método para listar los clientes páginados que queramos mostrar por página
	 *
	 * @param pageable
	 * @return
	 */
	public Page<Cliente> findAll(Pageable pageable);

	/**
	 * método para guardar un cliente
	 *
	 * @param cliente
	 */
	public void save(Cliente cliente);

	/**
	 * método para obtener un cliente solo por su id
	 *
	 * @param id
	 * @return
	 */
	public Cliente findOne(Long id);

	/**
	 * método para obtener las factura de un cliente por su id optimizado
	 *
	 * @param id
	 * @return
	 */
	public Cliente fetchByIdWithFacturas(Long id);

	/**
	 * método para borrar un cliente por su id
	 *
	 * @param id
	 */
	public void delete(Long id);

	/**
	 * método para buscar un producto por su nombre
	 *
	 * @param term
	 * @return
	 */
	public List<Producto> findByNombre(String term);

	/**
	 * método para guardar una factura
	 *
	 * @param factura
	 */
	public void saveFactura(Factura factura);

	/**
	 * método para obtener un producto por su id
	 *
	 * @param id
	 * @return
	 */
	public Producto findProductoById(Long id);

	/**
	 * método para obtener una factura por su id
	 *
	 * @param id
	 * @return
	 */
	public Factura findFacturaById(Long id);

	/**
	 * método para borrar una factura
	 *
	 * @param id
	 */
	public void deleteFactura(Long id);

	/**
	 * método para agilizar la consulta
	 *
	 * @param id
	 * @return
	 */
	public Factura fetchByIdWithClienteWhitItemFacturaWithProducto(Long id);

}
