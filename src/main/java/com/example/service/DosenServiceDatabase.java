package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DosenMapper;
import com.example.model.DosenModel;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DosenServiceDatabase implements DosenService{
	@Autowired
	private DosenMapper dosenMapper;
	
	@Override
	public List<DosenModel> selectAllDosen() {
		log.info("Select All Dosen");
		return dosenMapper.selectAllDosen();
	}

	@Override
	public DosenModel selectDosen(Integer id) {
		// TODO Auto-generated method stub
		log.info("Select a specific Dosen");
		return dosenMapper.selectDosen(id);
	}

	@Override
	public void updateDosen(DosenModel dosen) {
		// TODO Auto-generated method stub
		log.info("Update Dosen");
		dosenMapper.updateDosen(dosen);
		
	}

	@Override
	public void deleteDosen(DosenModel dosen) {
		// TODO Auto-generated method stub
		log.info("Update Dosen");
		dosenMapper.deleteDosen(dosen);
		
	}

	@Override
	public void addDosen(DosenModel dosen) {
		// TODO Auto-generated method stub
		log.info("Update Dosen");
		dosenMapper.addDosen(dosen);
		
	}

}
