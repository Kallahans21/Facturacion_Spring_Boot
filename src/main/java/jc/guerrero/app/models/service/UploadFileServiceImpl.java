package jc.guerrero.app.models.service;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadFileServiceImpl implements IUploadFileService {

	// para mostrar por consola
	private final Logger log = LoggerFactory.getLogger(getClass());

	private final static String UPLOADS_FOLDER = "uploads";

	@Override
	public Resource load(String filename) {

		Path pathFoto = this.getPath(filename);
		log.info("pathFoto: " + pathFoto);
		Resource recurso = null;

		try {
			recurso = new UrlResource(pathFoto.toUri());
			if (recurso.exists() && !recurso.isReadable()) {
				throw new RuntimeException("Error: no se puede cargar la imagen: " + pathFoto.toString());
			}
		} catch (MalformedURLException ex) {
			ex.printStackTrace();
		}

		return recurso;
	}

	@Override
	public String copy(MultipartFile file) {

		String uniqueFilename = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
		Path rootPath = this.getPath(uniqueFilename);

		log.info("rootPath: " + rootPath);

		try {
			Files.copy(file.getInputStream(), rootPath);

		} catch (IOException ex) {
			ex.printStackTrace();
		}

		return uniqueFilename;
	}

	@Override
	public boolean delete(String filename) {

		Path rootPath = this.getPath(filename);
		File archivo = rootPath.toFile();

		if (archivo.length() > 0 && archivo.canRead()) {
			if (archivo.delete()) {
				return true;
			}
		}
		return false;
	}

	public Path getPath(String filename) {
		return Paths.get(UPLOADS_FOLDER).resolve(filename).toAbsolutePath();
	}

	@Override
	public void deleteAll() {
		FileSystemUtils.deleteRecursively(Paths.get(UPLOADS_FOLDER).toFile());
	}

	@Override
	public void init() throws IOException {
		Files.createDirectory(Paths.get(UPLOADS_FOLDER));
	}

}
