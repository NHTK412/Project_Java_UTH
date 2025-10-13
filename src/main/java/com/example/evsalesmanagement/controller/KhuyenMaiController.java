package com.example.evsalesmanagement.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.evsalesmanagement.model.KhuyenMai;
import com.example.evsalesmanagement.service.KhuyenMaiService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping("/khuyenMai")
public class KhuyenMaiController {

    @Autowired
    private KhuyenMaiService khuyenMaiService;

    @GetMapping()
    public ResponseEntity<List<KhuyenMai>> layTatCaKhuyenMai() {
        return ResponseEntity.ok(khuyenMaiService.layTatCaKhuyenMai());
    }

    @GetMapping("/{maKhuyenMai}")
    public ResponseEntity<KhuyenMai> layKhuyenMaiTheoMa(@PathVariable String maKhuyenMai) {
        // return new String();
        return ResponseEntity.ok(khuyenMaiService.layKhuyenMaiTheoMa(Integer.parseInt(maKhuyenMai)));
    }

    @PostMapping()
    public ResponseEntity<KhuyenMai> taoKhuyenmai(@RequestBody KhuyenMai khuyenMai) {
        return ResponseEntity.ok(khuyenMaiService.taoKhuyenMai(khuyenMai));
    }

    @DeleteMapping("/{maKhuyenMai}")
    public ResponseEntity<KhuyenMai> xoaKhuyenMai(@PathVariable String maKhuyenMai)
    {
        return ResponseEntity.ok(khuyenMaiService.xoaKhuyenMai(Integer.parseInt(maKhuyenMai)));
    }

}
