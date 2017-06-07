package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DosenModel {
	private Integer id;
	private String nomor_induk;
	private String nomor_induk_nasional;
	private String nama;
	private String jenjang_pendidikan;
	private String institusi_penempatan;
	private String nomor_serdos;
	private String gelar_depan;
	private String gelar_belakang;
	private Integer tahun_lulus;
	private String jabatan_akademik;
	private Integer flag_aktif;
}
