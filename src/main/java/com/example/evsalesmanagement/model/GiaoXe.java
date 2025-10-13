package com.example.evsalesmanagement.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "GiaoXe")
public class GiaoXe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaDonGiaoXe")
    private Integer maDonGiaoXe;

    @Column(name = "NgayTaoDon")
    private LocalDateTime ngayTaoDon;

    @Column(name = "NgayDuKienGiaoXe")
    private LocalDateTime ngayDuKienGiaoXe;

    @Column(name = "NgayGiaoXe")
    private LocalDateTime ngayGiaoXe;

    @Column(name = "TrangThai")
    private String trangThai;

    @OneToOne
    @JoinColumn(name = "MaDonHang", unique = true)
    private DonHang donHang;

    @ManyToOne
    @JoinColumn(name = "MaNhanVien")
    private NhanVien nhanVien;

    public Integer getMaDonGiaoXe() {
        return maDonGiaoXe;
    }

    public void setMaDonGiaoXe(Integer maDonGiaoXe) {
        this.maDonGiaoXe = maDonGiaoXe;
    }

    public LocalDateTime getNgayTaoDon() {
        return ngayTaoDon;
    }

    public void setNgayTaoDon(LocalDateTime ngayTaoDon) {
        this.ngayTaoDon = ngayTaoDon;
    }

    public LocalDateTime getNgayDuKienGiaoXe() {
        return ngayDuKienGiaoXe;
    }

    public void setNgayDuKienGiaoXe(LocalDateTime ngayDuKienGiaoXe) {
        this.ngayDuKienGiaoXe = ngayDuKienGiaoXe;
    }

    public LocalDateTime getNgayGiaoXe() {
        return ngayGiaoXe;
    }

    public void setNgayGiaoXe(LocalDateTime ngayGiaoXe) {
        this.ngayGiaoXe = ngayGiaoXe;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public DonHang getDonHang() {
        return donHang;
    }

    public void setDonHang(DonHang donHang) {
        this.donHang = donHang;
    }

    public NhanVien getNhanVien() {
        return nhanVien;
    }

    public void setNhanVien(NhanVien nhanVien) {
        this.nhanVien = nhanVien;
    }
}