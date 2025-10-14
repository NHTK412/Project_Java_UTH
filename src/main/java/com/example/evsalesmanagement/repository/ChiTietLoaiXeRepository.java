package com.example.evsalesmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.evsalesmanagement.model.ChiTietLoaiXe;

@Repository
public interface ChiTietLoaiXeRepository extends JpaRepository<ChiTietLoaiXe, Integer> {

}
