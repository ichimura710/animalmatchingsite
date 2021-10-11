package Service;

import java.sql.Connection;
import java.util.List;

import Dao.AnimalDao;
import Dto.AnimalDto;
import Util.dbUtil;
import entity.AnimalInfo;

public class SearchService {
	/** DBコネクション */
	public Connection con;

	public SearchService(Connection con) {
		this.con = con;
	}

	public List<AnimalInfo> searchAnimalInfo(AnimalDto animal) throws Exception {
		AnimalDao dao = new AnimalDao(this.con);
		List<AnimalInfo> animalInfoList = null;
		try {
			animalInfoList = dao.searchResult(animal);
			if (animalInfoList.size() == 0) {
				animalInfoList = null;
			}
		} finally {
			dbUtil.closeConnection(this.con);
		}
		return animalInfoList;
	}
}
