package com.example.evsalesmanagement.model;

import java.math.BigDecimal;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "ChiTietBaoGia")
public class ChiTietBaoGia {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaChiTietBaoGia")
    private Integer maChiTietBaoGia;

    @Column(name = "SoLuong")
    private Integer soLuong;

    @Column(name = "GiamGia")
    private BigDecimal giamGia;

    @Column(name = "ThueTruocBa")
    private BigDecimal thueTruocBa;

    @Column(name = "PhiBienSo")
    private BigDecimal phiBienSo;

    @Column(name = "PhiDangKiem")
    private BigDecimal phiDangKiem;

    @Column(name = "BaoHiemBatBuoc")
    private BigDecimal baoHiemBatBuoc;

    @Column(name = "BaoHiemVatChatXe")
    private BigDecimal baoHiemVatChatXe;

    @Column(name = "PhiBaoTriDuongBo")
    private BigDecimal phiBaoTriDuongBo;

    @Column(name = "PhiDichVuDangKyXe")
    private BigDecimal phiDichVuDangKyXe;

    @Column(name = "PhanTramChietKhau")
    private BigDecimal phanTramChietKhau;

    @Column(name = "GiaSi")
    private BigDecimal giaSi;

    @Column(name = "TongTien")
    private BigDecimal tongTien;

    @ManyToOne
    @JoinColumn(name = "MaBaoGia")
    private BaoGia baoGia;

    @ManyToOne
    @JoinColumn(name = "MaChiTietLoaiXe")
    private ChiTietLoaiXe chiTietLoaiXe;

    public Integer getMaChiTietBaoGia() {
        return maChiTietBaoGia;
    }

    public void setMaChiTietBaoGia(Integer maChiTietBaoGia) {
        this.maChiTietBaoGia = maChiTietBaoGia;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public BigDecimal getGiamGia() {
        return giamGia;
    }

    public void setGiamGia(BigDecimal giamGia) {
        this.giamGia = giamGia;
    }

    public BigDecimal getThueTruocBa() {
        return thueTruocBa;
    }

    public void setThueTruocBa(BigDecimal thueTruocBa) {
        this.thueTruocBa = thueTruocBa;
    }

    public BigDecimal getPhiBienSo() {
        return phiBienSo;
    }

    public void setPhiBienSo(BigDecimal phiBienSo) {
        this.phiBienSo = phiBienSo;
    }

    public BigDecimal getPhiDangKiem() {
        return phiDangKiem;
    }

    public void setPhiDangKiem(BigDecimal phiDangKiem) {
        this.phiDangKiem = phiDangKiem;
    }

    public BigDecimal getBaoHiemBatBuoc() {
        return baoHiemBatBuoc;
    }

    public void setBaoHiemBatBuoc(BigDecimal baoHiemBatBuoc) {
        this.baoHiemBatBuoc = baoHiemBatBuoc;
    }

    public BigDecimal getBaoHiemVatChatXe() {
        return baoHiemVatChatXe;
    }

    public void setBaoHiemVatChatXe(BigDecimal baoHiemVatChatXe) {
        this.baoHiemVatChatXe = baoHiemVatChatXe;
    }

    public BigDecimal getPhiBaoTriDuongBo() {
        return phiBaoTriDuongBo;
    }

    public void setPhiBaoTriDuongBo(BigDecimal phiBaoTriDuongBo) {
        this.phiBaoTriDuongBo = phiBaoTriDuongBo;
    }

    public BigDecimal getPhiDichVuDangKyXe() {
        return phiDichVuDangKyXe;
    }

    public void setPhiDichVuDangKyXe(BigDecimal phiDichVuDangKyXe) {
        this.phiDichVuDangKyXe = phiDichVuDangKyXe;
    }

    public BigDecimal getPhanTramChietKhau() {
        return phanTramChietKhau;
    }

    public void setPhanTramChietKhau(BigDecimal phanTramChietKhau) {
        this.phanTramChietKhau = phanTramChietKhau;
    }

    public BigDecimal getGiaSi() {
        return giaSi;
    }

    public void setGiaSi(BigDecimal giaSi) {
        this.giaSi = giaSi;
    }

    public BigDecimal getTongTien() {
        return tongTien;
    }

    public void setTongTien(BigDecimal tongTien) {
        this.tongTien = tongTien;
    }

    public BaoGia getBaoGia() {
        return baoGia;
    }

    public void setBaoGia(BaoGia baoGia) {
        this.baoGia = baoGia;
    }

    public ChiTietLoaiXe getChiTietLoaiXe() {
        return chiTietLoaiXe;
    }

    public void setChiTietLoaiXe(ChiTietLoaiXe chiTietLoaiXe) {
        this.chiTietLoaiXe = chiTietLoaiXe;
    }
}