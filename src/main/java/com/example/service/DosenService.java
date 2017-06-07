package com.example.service;

import java.util.List;

import com.example.model.DosenModel;

public interface DosenService {
	List<DosenModel> selectAllDosen();
	DosenModel selectDosen(Integer id);
	void updateDosen(DosenModel dosen);
	void deleteDosen(DosenModel dosen);
	void addDosen (DosenModel dosen);

}
