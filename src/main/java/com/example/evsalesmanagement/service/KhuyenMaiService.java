package com.example.evsalesmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.evsalesmanagement.model.KhuyenMai;
import com.example.evsalesmanagement.repository.KhuyenMaiRepository;

@Service
public class KhuyenMaiService {

    @Autowired
    KhuyenMaiRepository khuyenMaiRepository;

    public List<KhuyenMai> layTatCaKhuyenMai() {
        return khuyenMaiRepository.findAll();
    }

    public KhuyenMai layKhuyenMaiTheoMa(Integer maKhuyenMai) {

        // return khuyenMaiRepository.findByIdWithRelations(maKhuyenmai);

        KhuyenMai khuyenMai = khuyenMaiRepository.findById(maKhuyenMai)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy KhuyenMai"));

        khuyenMai.getChiTietLoaiXes().size();
        khuyenMai.getDaiLys().size();
        return khuyenMai;
    }

    public KhuyenMai taoKhuyenMai(KhuyenMai khuyenMai) {
        return khuyenMaiRepository.save(khuyenMai);
    }

    public KhuyenMai xoaKhuyenMai(Integer maKhuyenMai) {
        KhuyenMai khuyenMai = khuyenMaiRepository.findById(maKhuyenMai)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy KhuyenMai"));
        khuyenMaiRepository.deleteById(maKhuyenMai);
        return khuyenMai;

    }

}
