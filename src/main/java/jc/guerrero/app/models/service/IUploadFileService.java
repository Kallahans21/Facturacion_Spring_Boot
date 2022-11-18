package jc.guerrero.app.models.service;

import java.io.IOException;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface IUploadFileService {

	public Resource load(String filename);

	public String copy(MultipartFile file);

	public boolean delete(String filename);

	public void deleteAll();

	public void init() throws IOException;

}
