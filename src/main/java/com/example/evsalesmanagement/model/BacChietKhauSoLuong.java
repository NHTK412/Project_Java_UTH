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
@Table(name = "BacChietKhauSoLuong")
public class BacChietKhauSoLuong {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaBacChietKhauSoLuong")
    private Integer maBacChietKhauSoLuong;

    @Column(name = "SoLuongTu")
    private Integer soLuongTu;

    @Column(name = "SoLuongDen")
    private Integer soLuongDen;

    @Column(name = "PhanTramChietKhau")
    private BigDecimal phanTramChietKhau;

    @ManyToOne
    @JoinColumn(name = "MaChinhSach")
    private ChinhSachChietKhau chinhSachChietKhau;

    public Integer getMaBacChietKhauSoLuong() {
        return maBacChietKhauSoLuong;
    }

    public void setMaBacChietKhauSoLuong(Integer maBacChietKhauSoLuong) {
        this.maBacChietKhauSoLuong = maBacChietKhauSoLuong;
    }

    public Integer getSoLuongTu() {
        return soLuongTu;
    }

    public void setSoLuongTu(Integer soLuongTu) {
        this.soLuongTu = soLuongTu;
    }

    public Integer getSoLuongDen() {
        return soLuongDen;
    }

    public void setSoLuongDen(Integer soLuongDen) {
        this.soLuongDen = soLuongDen;
    }

    public BigDecimal getPhanTramChietKhau() {
        return phanTramChietKhau;
    }

    public void setPhanTramChietKhau(BigDecimal phanTramChietKhau) {
        this.phanTramChietKhau = phanTramChietKhau;
    }

    public ChinhSachChietKhau getChinhSachChietKhau() {
        return chinhSachChietKhau;
    }

    public void setChinhSachChietKhau(ChinhSachChietKhau chinhSachChietKhau) {
        this.chinhSachChietKhau = chinhSachChietKhau;
    }
}