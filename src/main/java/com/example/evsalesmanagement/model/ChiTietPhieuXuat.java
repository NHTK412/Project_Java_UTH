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
@Table(name = "ChiTietPhieuXuat")
@IdClass(ChiTietPhieuXuat.ChiTietPhieuXuatId.class)
public class ChiTietPhieuXuat extends GhiNhanThoiGian{
    @Id
    @Column(name = "MaPhieuXuat")
    private Integer maPhieuXuat;

    @Id
    @Column(name = "MaXe")
    private Integer maXe;

    @ManyToOne
    @JoinColumn(name = "MaPhieuXuat", insertable = false, updatable = false)
    private PhieuXuatKho phieuXuatKho;

    @ManyToOne
    @JoinColumn(name = "MaXe", insertable = false, updatable = false)
    private Xe xe;

    public Integer getMaPhieuXuat() {
        return maPhieuXuat;
    }

    public void setMaPhieuXuat(Integer maPhieuXuat) {
        this.maPhieuXuat = maPhieuXuat;
    }

    public Integer getMaXe() {
        return maXe;
    }

    public void setMaXe(Integer maXe) {
        this.maXe = maXe;
    }

    public PhieuXuatKho getPhieuXuatKho() {
        return phieuXuatKho;
    }

    public void setPhieuXuatKho(PhieuXuatKho phieuXuatKho) {
        this.phieuXuatKho = phieuXuatKho;
    }

    public Xe getXe() {
        return xe;
    }

    public void setXe(Xe xe) {
        this.xe = xe;
    }

    @Embeddable
    public static class ChiTietPhieuXuatId {
        private Integer maPhieuXuat;
        private Integer maXe;

        public ChiTietPhieuXuatId() {
        }

        public ChiTietPhieuXuatId(Integer maPhieuXuat, Integer maXe) {
            this.maPhieuXuat = maPhieuXuat;
            this.maXe = maXe;
        }

        public Integer getMaPhieuXuat() {
            return maPhieuXuat;
        }

        public void setMaPhieuXuat(Integer maPhieuXuat) {
            this.maPhieuXuat = maPhieuXuat;
        }

        public Integer getMaXe() {
            return maXe;
        }

        public void setMaXe(Integer maXe) {
            this.maXe = maXe;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o)
                return true;
            if (o == null || getClass() != o.getClass())
                return false;
            ChiTietPhieuXuatId that = (ChiTietPhieuXuatId) o;
            return maPhieuXuat.equals(that.maPhieuXuat) && maXe.equals(that.maXe);
        }

        @Override
        public int hashCode() {
            return java.util.Objects.hash(maPhieuXuat, maXe);
        }
    }
}