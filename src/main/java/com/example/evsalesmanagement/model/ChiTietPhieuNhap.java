package com.example.evsalesmanagement.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "ChiTietPhieuNhap")
@IdClass(ChiTietPhieuNhap.ChiTietPhieuNhapId.class)
public class ChiTietPhieuNhap {
    @Id
    @Column(name = "MaXe")
    private Integer maXe;

    @Id
    @Column(name = "MaPhieuNhap")
    private Integer maPhieuNhap;

    @ManyToOne
    @JoinColumn(name = "MaXe", insertable = false, updatable = false)
    private Xe xe;

    @ManyToOne
    @JoinColumn(name = "MaPhieuNhap", insertable = false, updatable = false)
    private PhieuNhapKho phieuNhapKho;

    public Integer getMaXe() {
        return maXe;
    }

    public void setMaXe(Integer maXe) {
        this.maXe = maXe;
    }

    public Integer getMaPhieuNhap() {
        return maPhieuNhap;
    }

    public void setMaPhieuNhap(Integer maPhieuNhap) {
        this.maPhieuNhap = maPhieuNhap;
    }

    public Xe getXe() {
        return xe;
    }

    public void setXe(Xe xe) {
        this.xe = xe;
    }

    public PhieuNhapKho getPhieuNhapKho() {
        return phieuNhapKho;
    }

    public void setPhieuNhapKho(PhieuNhapKho phieuNhapKho) {
        this.phieuNhapKho = phieuNhapKho;
    }

    @Embeddable
    public static class ChiTietPhieuNhapId {
        private Integer maXe;
        private Integer maPhieuNhap;

        public ChiTietPhieuNhapId() {
        }

        public ChiTietPhieuNhapId(Integer maXe, Integer maPhieuNhap) {
            this.maXe = maXe;
            this.maPhieuNhap = maPhieuNhap;
        }

        public Integer getMaXe() {
            return maXe;
        }

        public void setMaXe(Integer maXe) {
            this.maXe = maXe;
        }

        public Integer getMaPhieuNhap() {
            return maPhieuNhap;
        }

        public void setMaPhieuNhap(Integer maPhieuNhap) {
            this.maPhieuNhap = maPhieuNhap;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o)
                return true;
            if (o == null || getClass() != o.getClass())
                return false;
            ChiTietPhieuNhapId that = (ChiTietPhieuNhapId) o;
            return maXe.equals(that.maXe) && maPhieuNhap.equals(that.maPhieuNhap);
        }

        @Override
        public int hashCode() {
            return java.util.Objects.hash(maXe, maPhieuNhap);
        }
    }
}