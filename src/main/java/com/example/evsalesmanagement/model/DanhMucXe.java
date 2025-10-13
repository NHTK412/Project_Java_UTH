package com.example.evsalesmanagement.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "DanhMucXe")
public class DanhMucXe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaDanhMucXe")
    private Integer maDanhMucXe;

    @Column(name = "TenDanhMuc", nullable = false)
    private String tenDanhMuc;

    @Column(name = "MoTa")
    private String moTa;

    @ManyToMany
    @JoinTable(name = "LoaiXe_DanhMucXe", joinColumns = @JoinColumn(name = "MaDanhMucXe"), inverseJoinColumns = @JoinColumn(name = "MaLoaiXe"))
    private List<LoaiXe> loaiXes = new ArrayList<>();

    public Integer getMaDanhMucXe() {
        return maDanhMucXe;
    }

    public void setMaDanhMucXe(Integer maDanhMucXe) {
        this.maDanhMucXe = maDanhMucXe;
    }

    public String getTenDanhMuc() {
        return tenDanhMuc;
    }

    public void setTenDanhMuc(String tenDanhMuc) {
        this.tenDanhMuc = tenDanhMuc;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }
}