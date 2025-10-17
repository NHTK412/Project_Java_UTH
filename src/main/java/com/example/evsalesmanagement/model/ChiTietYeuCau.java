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
@Table(name = "ChiTietYeuCau")
@IdClass(ChiTietYeuCau.ChiTietYeuCauId.class)
public class ChiTietYeuCau extends GhiNhanThoiGian{
    @Id
    @Column(name = "MaYeuCau")
    private Integer maYeuCau;

    @Id
    @Column(name = "MaChiTietLoaiXe")
    private Integer maChiTietLoaiXe;

    @Column(name = "SoLuong")
    private Integer soLuong;

    @ManyToOne
    @JoinColumn(name = "MaYeuCau", insertable = false, updatable = false)
    private YeuCauNhapHang yeuCauNhapHang;

    @ManyToOne
    @JoinColumn(name = "MaChiTietLoaiXe", insertable = false, updatable = false)
    private ChiTietLoaiXe chiTietLoaiXe;

    public Integer getMaYeuCau() {
        return maYeuCau;
    }

    public void setMaYeuCau(Integer maYeuCau) {
        this.maYeuCau = maYeuCau;
    }

    public Integer getMaChiTietLoaiXe() {
        return maChiTietLoaiXe;
    }

    public void setMaChiTietLoaiXe(Integer maChiTietLoaiXe) {
        this.maChiTietLoaiXe = maChiTietLoaiXe;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public YeuCauNhapHang getYeuCauNhapHang() {
        return yeuCauNhapHang;
    }

    public void setYeuCauNhapHang(YeuCauNhapHang yeuCauNhapHang) {
        this.yeuCauNhapHang = yeuCauNhapHang;
    }

    public ChiTietLoaiXe getChiTietLoaiXe() {
        return chiTietLoaiXe;
    }

    public void setChiTietLoaiXe(ChiTietLoaiXe chiTietLoaiXe) {
        this.chiTietLoaiXe = chiTietLoaiXe;
    }

    @Embeddable
    public static class ChiTietYeuCauId {
        private Integer maYeuCau;
        private Integer maChiTietLoaiXe;

        public ChiTietYeuCauId() {
        }

        public ChiTietYeuCauId(Integer maYeuCau, Integer maChiTietLoaiXe) {
            this.maYeuCau = maYeuCau;
            this.maChiTietLoaiXe = maChiTietLoaiXe;
        }

        public Integer getMaYeuCau() {
            return maYeuCau;
        }

        public void setMaYeuCau(Integer maYeuCau) {
            this.maYeuCau = maYeuCau;
        }

        public Integer getMaChiTietLoaiXe() {
            return maChiTietLoaiXe;
        }

        public void setMaChiTietLoaiXe(Integer maChiTietLoaiXe) {
            this.maChiTietLoaiXe = maChiTietLoaiXe;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o)
                return true;
            if (o == null || getClass() != o.getClass())
                return false;
            ChiTietYeuCauId that = (ChiTietYeuCauId) o;
            return maYeuCau.equals(that.maYeuCau) && maChiTietLoaiXe.equals(that.maChiTietLoaiXe);
        }

        @Override
        public int hashCode() {
            return java.util.Objects.hash(maYeuCau, maChiTietLoaiXe);
        }
    }

}