package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.model.DosenModel;

@Mapper
public interface DosenMapper {
	@Select("select * from Dosen where flag_aktif = 1")
	@Results(value = { @Result(property = "nama", column = "nama"),
			@Result(property = "nomor_induk", column = "nomor_induk"),
			@Result(property = "nomor_induk_nasional", column = "nomor_induk_nasional"),
			@Result(property = "jabatan_akademik", column = "jabatan_akademik") })
	List<DosenModel> selectAllDosen();

	@Select("select * from Dosen where id =  #{id}")
	@Results(value = { @Result(property = "nama", column = "nama"),
			@Result(property = "nomor_induk", column = "nomor_induk"),
			@Result(property = "nomor_induk_nasional", column = "nomor_induk_nasional"),
			@Result(property = "jabatan_akademik", column = "jabatan_akademik"),
			@Result(property = "institusi_penempatan", column = "institusi_penempatan"),
			@Result(property = "gelar_depan", column = "gelar_depan"),
			@Result(property = "tahun_lulus", column = "tahun_lulus"),
			@Result(property = "jenjang_pendidikan", column = "jenjang_pendidikan"),
			@Result(property = "nomor_serdos", column = "nomor_serdos"),
			@Result(property = "gelar_belakang", column = "gelar_belakang") })
	DosenModel selectDosen(@Param("id") Integer id);

	@Update("Update dosen set nomor_induk = #{nomor_induk}, nomor_induk_nasional=#{nomor_induk_nasional}, nama=#{nama}, jenjang_pendidikan=#{jenjang_pendidikan}, institusi_penempatan=#{institusi_penempatan}, nomor_serdos=#{nomor_serdos}, gelar_depan=#{gelar_depan}, gelar_belakang=#{gelar_belakang}, jabatan_akademik=#{jabatan_akademik}, tahun_lulus=#{tahun_lulus} where id = #{id}")
	void updateDosen(DosenModel dosen);

	@Update("Update dosen set flag_aktif = 0 where id = #{id}")
	void deleteDosen(DosenModel dosen);
	
	@Insert("INSERT INTO dosen (nomor_induk, nomor_induk_nasional, nama, jenjang_pendidikan, institusi_penempatan, nomor_serdos, gelar_depan, gelar_belakang, jabatan_akademik, tahun_lulus, flag_aktif) VALUES (#{nomor_induk}, #{nomor_induk_nasional}, #{nama}, #{jenjang_pendidikan},#{institusi_penempatan},#{nomor_serdos},#{gelar_depan},#{gelar_belakang},#{jabatan_akademik},#{tahun_lulus},1)")
	void addDosen(DosenModel dosen);

}
