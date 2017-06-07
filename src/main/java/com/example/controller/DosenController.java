package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.model.DosenModel;
import com.example.service.DosenService;

@Controller
public class DosenController {

	@Autowired
	private DosenService dosenService;

	@RequestMapping("/dosen/viewall")
	public String view(Model model) {
		List<DosenModel> allDosen = dosenService.selectAllDosen();
		model.addAttribute("allDosen", allDosen);

		return "viewall";
	}

	@RequestMapping("/dosen/view/{id}")
	public String viewPath(Model model, @PathVariable(value = "id") Integer id) {
		DosenModel dosen = dosenService.selectDosen(id);

		if (dosen != null) {
			model.addAttribute("dosen", dosen);
			return "view";
		} else {
			model.addAttribute("id", id);
			return "not-found";
		}
	}

	@RequestMapping("/dosen/update/{id}")
	public String update(Model model, @PathVariable(value = "id") Integer id) {

		DosenModel dosen = dosenService.selectDosen(id);

		if (dosen != null) {
			dosenService.updateDosen(dosen);
			model.addAttribute("dosen", dosen);
			return "form-update";
		} else
			return "not-found";
	}

	@RequestMapping(value = "/dosen/update/submit", method = RequestMethod.POST)
	public String updateSubmit(@ModelAttribute DosenModel dosen, Model model) {
		DosenModel newDosen = dosen;
		dosenService.updateDosen(newDosen);

		model.addAttribute("dosen", newDosen);
		return "view";

	}

	@RequestMapping("/dosen/delete/{id}")
	public String delete(Model model, @PathVariable(value = "id") Integer id) {
		DosenModel dosen = dosenService.selectDosen(id);

		if (dosen != null) {
			dosenService.deleteDosen(dosen);
			return "delete";
		} else
			return "not-found";
	}

	@RequestMapping("/dosen/add")
	public String add() {
		return "form-add";
	}

	@RequestMapping("/dosen/add/submit")
	public String addSubmit(@RequestParam(value = "nomor_induk", required = false) String nomor_induk,
			@RequestParam(value = "nomor_induk_nasional", required = false) String nomor_induk_nasional,
			@RequestParam(value = "nama", required = false) String nama,
			@RequestParam(value = "jenjang_pendidikan", required = false) String jenjang_pendidikan,
			@RequestParam(value = "institusi_penempatan", required = false) String institusi_penempatan,
			@RequestParam(value = "nomor_serdos", required = false) String nomor_serdos,
			@RequestParam(value = "gelar_depan", required = false) String gelar_depan,
			@RequestParam(value = "gelar_belakang", required = false) String gelar_belakang,
			@RequestParam(value = "jabatan_akademik", required = false) String jabatan_akademik,
			@RequestParam(value = "tahun_lulus", required = false) int tahun_lulus)
			{
				DosenModel dosen = new DosenModel(null,nomor_induk, nomor_induk_nasional, nama, jenjang_pendidikan, institusi_penempatan, nomor_serdos, gelar_depan, gelar_belakang, tahun_lulus, jabatan_akademik, 1);
				dosenService.addDosen(dosen);

				return "add-success";
			}

}
