use ev_sales_management;

-- ========== INSERT DAI_LY ==========
INSERT INTO
    dai_ly (
        ten_dai_ly,
        dia_chi,
        so_dien_thoai,
        email,
        trang_thai
    )
VALUES (
        'VinFast TP.HCM - Quận 1',
        '456 Đường Lê Lợi, Quận 1, TP.HCM',
        '0283-123-4567',
        'tphcm@vinfast.vn',
        'Hoạt động'
    ),
    (
        'Đại lý phân phối Quận 1',
        '456 Đường Lê Lợi, Quận 1, TP.HCM',
        '0283-123-4567',
        'dailyquan1@vinfast.vn',
        'Hoạt động'
    ),
    (
        'Đại lý phân phối Quận 10',
        '789 Đường Sư Vạn Hạnh, Quận 10, TP.HCM',
        '0283-456-7890',
        'dailyquan10@vinfast.vn',
        'Hoạt động'
    );

-- ========== INSERT NHAN_VIEN ==========
INSERT INTO
    nhan_vien (
        ten_nhan_vien,
        gioi_tinh,
        ngay_sinh,
        so_dien_thoai,
        email,
        dia_chi,
        chuc_vu,
        ma_dai_ly
    )
VALUES (
        'Nguyễn Văn An',
        'Nam',
        '1990-05-15',
        '0912-345-678',
        'an.nguyen@vinfast.vn',
        'TP.HCM',
        'Giám đốc hãng xe',
        1
    ),
    (
        'Trần Thị Bích',
        'Nữ',
        '1992-08-20',
        '0913-456-789',
        'bich.tran@vinfast.vn',
        'TP.HCM',
        'Nhân viên hãng xe',
        1
    ),
    (
        'Lê Minh Tuấn',
        'Nam',
        '1988-03-10',
        '0914-567-890',
        'tuan.le@vinfast.vn',
        'TP.HCM',
        'Quản lý đại lý',
        2
    ),
    (
        'Phạm Văn Hùng',
        'Nam',
        '1995-11-25',
        '0915-678-901',
        'hung.pham@vinfast.vn',
        'TP.HCM',
        'Nhân viên đại lý',
        2
    ),
    (
        'Võ Thị Hương',
        'Nữ',
        '1993-06-05',
        '0916-789-012',
        'huong.vo@vinfast.vn',
        'TP.HCM',
        'Quản lý đại lý',
        3
    ),
    (
        'Đặng Quốc Huy',
        'Nam',
        '1991-09-12',
        '0917-890-123',
        'huy.dang@vinfast.vn',
        'TP.HCM',
        'Nhân viên đại lý',
        3
    );

-- ========== INSERT TAI_KHOAN ==========
INSERT INTO
    tai_khoan (
        ten_dang_nhap,
        mat_khau,
        quyen_han,
        trang_thai,
        ngay_tao,
        lan_dang_nhap_cuoi,
        ma_nhan_vien
    )
VALUES (
        'an.nguyen',
        'hash_password_123',
        'ADMIN',
        'Hoạt động',
        NOW(),
        NOW(),
        1
    ),
    (
        'bich.tran',
        'hash_password_124',
        'EVM_STAFF',
        'Hoạt động',
        NOW(),
        NOW(),
        2
    ),
    (
        'tuan.le',
        'hash_password_125',
        'DEALER_MANAGER',
        'Hoạt động',
        NOW(),
        NOW(),
        3
    ),
    (
        'hung.pham',
        'hash_password_126',
        'DEALER_STAFF',
        'Hoạt động',
        NOW(),
        NOW(),
        4
    ),
    (
        'huong.vo',
        'hash_password_127',
        'DEALER_MANAGER',
        'Hoạt động',
        NOW(),
        NOW(),
        5
    ),
    (
        'huy.dang',
        'hash_password_128',
        'DEALER_STAFF',
        'Hoạt động',
        NOW(),
        NOW(),
        6
    );

-- ========== INSERT KHACH_HANG ==========
INSERT INTO
    khach_hang (
        ten_khach_hang,
        gioi_tinh,
        ngay_sinh,
        so_dien_thoai,
        email,
        dia_chi,
        hang_thanh_vien,
        ngay_tao
    )
VALUES (
        'Phan Minh Đức',
        'Nam',
        '1985-04-20',
        '0901-111-2222',
        'minh.duc@email.com',
        '100 Phố Huế, Hà Nội',
        'VIP',
        NOW()
    ),
    (
        'Nguyễn Thu Hương',
        'Nữ',
        '1988-07-15',
        '0902-333-4444',
        'thu.huong@email.com',
        '50 Nguyễn Huệ, TP.HCM',
        'Thường',
        NOW()
    ),
    (
        'Trần Khắc Hùng',
        'Nam',
        '1992-02-10',
        '0903-555-6666',
        'khac.hung@email.com',
        '200 Lê Văn Sỹ, TP.HCM',
        'Thường',
        NOW()
    ),
    (
        'Hoàng Mộng Nhi',
        'Nữ',
        '1990-11-28',
        '0904-777-8888',
        'mong.nhi@email.com',
        '30 Bà Triệu, Hà Nội',
        'VIP',
        NOW()
    ),
    (
        'Lưu Tấn Tài',
        'Nam',
        '1987-09-03',
        '0905-999-0000',
        'tan.tai@email.com',
        '150 Cộng Hòa, TP.HCM',
        'Thường',
        NOW()
    );

-- ========== INSERT DANH_MUC_XE ==========
INSERT INTO
    danh_muc_xe (ten_danh_muc, mo_ta)
VALUES (
        'Sedan',
        'Xe sedan 4-5 chỗ ngồi'
    ),
    ('SUV', 'Xe SUV dã ngoại'),
    (
        'Minivan',
        'Xe gia đình đa dụng'
    ),
    (
        'Bán tải',
        'Xe bán tải tiện dụng'
    );

-- ========== INSERT LOAI_XE ==========
INSERT INTO
    loai_xe (
        ten_loai_xe,
        nam_san_xuat,
        mo_ta
    )
VALUES (
        'VinFast VF e34',
        2023,
        'SUV điện 5 chỗ thông minh'
    ),
    (
        'VinFast VF 8',
        2023,
        'SUV điện cao cấp 5 chỗ'
    ),
    (
        'VinFast VF 9',
        2023,
        'SUV điện hạng sang 7 chỗ'
    ),
    (
        'VinFast VF 5',
        2023,
        'SUV điện nhỏ gọn đô thị'
    ),
    (
        'VinFast Lux A2.0',
        2023,
        'Sedan hạng sang động cơ xăng'
    ),
    (
        'VinFast Lux SA2.0',
        2023,
        'SUV hạng sang 7 chỗ động cơ xăng'
    );

-- ========== INSERT CHI_TIET_LOAI_XE ==========
INSERT INTO
    chi_tiet_loai_xe (
        ma_loai_xe,
        cau_hinh,
        mau_sac,
        phien_ban,
        tinh_nang,
        gia_ban
    )
VALUES (
        1,
        'Pin 42kWh, 1 motor',
        'Trắng',
        'Eco',
        'ABS, Túi khí, Điều hòa, Camera lùi',
        690000000
    ),
    (
        1,
        'Pin 42kWh, 1 motor',
        'Xanh',
        'Plus',
        'ABS, Túi khí x6, Điều hòa, Camera 360, Cảm biến',
        760000000
    ),
    (
        2,
        'Pin 87.7kWh, 2 motor AWD',
        'Đen',
        'Eco',
        'ABS, Túi khí x8, Điều hòa, Camera 360',
        1200000000
    ),
    (
        2,
        'Pin 87.7kWh, 2 motor AWD',
        'Xám',
        'Plus',
        'ABS, Túi khí x11, Điều hòa, Camera 360, ADAS Level 2',
        1450000000
    ),
    (
        3,
        'Pin 123kWh, 2 motor AWD',
        'Đen',
        'Eco',
        'ABS, Túi khí x11, Điều hòa, 7 chỗ, Camera 360',
        1500000000
    ),
    (
        3,
        'Pin 123kWh, 2 motor AWD',
        'Trắng',
        'Plus',
        'ABS, Túi khí x11, Điều hòa, 7 chỗ, ADAS Level 2',
        1650000000
    ),
    (
        4,
        'Pin 37.23kWh, 1 motor',
        'Đỏ',
        'Base',
        'ABS, Túi khí, Điều hòa',
        458000000
    ),
    (
        4,
        'Pin 37.23kWh, 1 motor',
        'Xanh',
        'Plus',
        'ABS, Túi khí x6, Điều hòa, Camera 360',
        550000000
    ),
    (
        5,
        '2.0L Turbo, số tự động',
        'Đen',
        'Tiêu chuẩn',
        'ABS, Túi khí x8, Điều hòa, Nội thất da',
        1080000000
    ),
    (
        5,
        '2.0L Turbo, số tự động',
        'Trắng',
        'Cao cấp',
        'ABS, Túi khí x9, Điều hòa, Nội thất da cao cấp',
        1200000000
    ),
    (
        6,
        '2.0L Turbo, số tự động',
        'Bạc',
        'Tiêu chuẩn',
        'ABS, Túi khí x8, Điều hòa, 7 chỗ',
        1580000000
    ),
    (
        6,
        '2.0L Turbo, số tự động',
        'Đen',
        'Cao cấp',
        'ABS, Túi khí x11, Điều hòa, 7 chỗ, Nội thất da',
        1688000000
    );

-- ========== INSERT XE ==========
-- Xe tại hãng (đại lý 1)
INSERT INTO
    xe (
        so_khung,
        so_may,
        trang_thai,
        tinh_trang_xe,
        ma_chi_tiet_loai_xe,
        ma_dai_ly
    )
VALUES (
        'VIN001',
        'ENG001',
        'CHUA_BAN',
        'Mới',
        1,
        1
    ),
    (
        'VIN002',
        'ENG002',
        'CHUA_BAN',
        'Mới',
        2,
        1
    ),
    (
        'VIN003',
        'ENG003',
        'CHUA_BAN',
        'Mới',
        3,
        1
    ),
    (
        'VIN004',
        'ENG004',
        'CHUA_BAN',
        'Mới',
        4,
        1
    ),
    (
        'VIN005',
        'ENG005',
        'CHUA_BAN',
        'Mới',
        5,
        1
    ),
    (
        'VIN006',
        'ENG006',
        'CHUA_BAN',
        'Mới',
        6,
        1
    ),
    (
        'VIN007',
        'ENG007',
        'CHUA_BAN',
        'Mới',
        7,
        1
    ),
    (
        'VIN008',
        'ENG008',
        'CHUA_BAN',
        'Mới',
        8,
        1
    ),
    -- Xe đã bán cho đại lý 2
    (
        'VIN009',
        'ENG009',
        'DA_BAN',
        'Mới',
        1,
        2
    ),
    (
        'VIN010',
        'ENG010',
        'DA_BAN',
        'Mới',
        3,
        2
    ),
    -- Xe đã bán cho đại lý 3
    (
        'VIN011',
        'ENG011',
        'DA_BAN',
        'Mới',
        7,
        3
    ),
    (
        'VIN012',
        'ENG012',
        'DA_BAN',
        'Mới',
        9,
        3
    );

-- ========== INSERT KHUYEN_MAI ==========
INSERT INTO
    khuyen_mai (
        ten_khuyen_mai,
        loai_khuyen_mai,
        gia_tri_khuyen_mai,
        tieu_chi,
        so_tien_giam,
        phan_tram_giam,
        ngay_bat_dau,
        ngay_het_han,
        trang_thai
    )
VALUES (
        'Ưu đãi VF e34',
        'Tiền mặt',
        50000000,
        'Mua xe VF e34',
        50000000,
        NULL,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        'Khuyến mãi bán sỉ',
        'Phần trăm',
        NULL,
        'Mua từ 2 xe trở lên',
        NULL,
        5.00,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        'Tặng pin dự phòng',
        'Dịch vụ',
        15000000,
        'Mua xe VF 5',
        NULL,
        NULL,
        '2024-06-01',
        '2024-08-31',
        'Hoạt động'
    );

-- ========== INSERT BAO_GIA ==========
-- Báo giá cho khách lẻ (chưa có đơn hàng)
INSERT INTO
    bao_gia (
        ma_don_hang,
        tong_tien,
        ngay_tao_phieu,
        trang_thai
    )
VALUES (
        NULL,
        720000000,
        '2024-01-08 10:00:00',
        'Chờ duyệt'
    ),
    (
        NULL,
        1250000000,
        '2024-01-12 14:30:00',
        'Chờ duyệt'
    ),
    -- Báo giá đã chốt thành đơn
    (
        NULL,
        760000000,
        '2024-01-15 09:00:00',
        'Đã duyệt'
    ),
    (
        NULL,
        1200000000,
        '2024-02-10 11:00:00',
        'Đã duyệt'
    ),
    (
        NULL,
        2800000000,
        '2024-02-18 15:30:00',
        'Đã duyệt'
    );

-- ========== INSERT CHI_TIET_BAO_GIA ==========
INSERT INTO
    chi_tiet_bao_gia (
        ma_bao_gia,
        ma_chi_tiet_loai_xe,
        so_luong,
        giam_gia,
        thue_truoc_ba,
        phi_bien_so,
        phi_dang_kiem,
        bao_hiem_bat_buoc,
        bao_hiem_vat_chat_xe,
        phi_bao_tri_duong_bo,
        phi_dich_vu_dang_ky_xe,
        phan_tram_chiet_khau,
        gia_si,
        tong_tien
    )
VALUES
    -- Báo giá 1 (chưa chốt)
    (
        1,
        2,
        1,
        0,
        0,
        1500000,
        500000,
        555000,
        8000000,
        500000,
        1000000,
        0,
        0,
        772055000
    ),
    -- Báo giá 2 (chưa chốt)
    (
        2,
        4,
        1,
        0,
        0,
        1500000,
        500000,
        555000,
        12000000,
        500000,
        1000000,
        0,
        0,
        1466055000
    ),
    -- Báo giá 3 (đã chốt - khách lẻ)
    (
        3,
        2,
        1,
        0,
        0,
        1500000,
        500000,
        555000,
        8000000,
        500000,
        1000000,
        0,
        0,
        772055000
    ),
    -- Báo giá 4 (đã chốt - bán sỉ cho đại lý)
    (
        4,
        3,
        2,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        5,
        1100000000,
        2090000000
    ),
    -- Báo giá 5 (đã chốt - bán sỉ cho đại lý)
    (
        5,
        7,
        2,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        3,
        420000000,
        814800000
    );

-- ========== INSERT DON_HANG ==========
-- Đơn bán lẻ cho khách hàng (ma_dai_ly = NULL, ma_khach_hang có giá trị)
INSERT INTO
    don_hang (
        so_hop_dong,
        ngay_tao,
        trang_thai,
        ghi_chu,
        tong_tien_don_hang,
        ma_khach_hang,
        ma_nhan_vien,
        ma_dai_ly
    )
VALUES (
        'HĐ001/2024',
        '2024-01-15 09:30:00',
        'Hoàn thành',
        'Khách mua xe VF e34 Plus',
        772055000,
        2,
        1,
        NULL
    ),
    -- Đơn bán sỉ cho đại lý (ma_khach_hang = NULL, ma_dai_ly có giá trị)
    (
        'HĐ002/2024',
        '2024-02-10 14:00:00',
        'Hoàn thành',
        'Phân phối 2 xe VF 8 cho đại lý Quận 1',
        2090000000,
        NULL,
        1,
        2
    ),
    (
        'HĐ003/2024',
        '2024-02-20 10:30:00',
        'Hoàn thành',
        'Phân phối 2 xe VF 5 cho đại lý Quận 10',
        814800000,
        NULL,
        2,
        3
    );

-- Cập nhật ma_don_hang cho các báo giá đã chốt
UPDATE bao_gia SET ma_don_hang = 1 WHERE ma_bao_gia = 3;

UPDATE bao_gia SET ma_don_hang = 2 WHERE ma_bao_gia = 4;

UPDATE bao_gia SET ma_don_hang = 3 WHERE ma_bao_gia = 5;

-- ========== INSERT THANH_TOAN ==========
INSERT INTO
    thanh_toan (
        ma_don_hang,
        phuong_thuc_thanh_toan,
        hinh_thuc,
        so_tien,
        ky_so,
        ngay_den_han,
        ngay_thanh_toan,
        tien_phat,
        trang_thai
    )
VALUES
    -- Thanh toán cho đơn bán lẻ
    (
        1,
        'Chuyển khoản',
        'Hai kỳ',
        386027500,
        1,
        '2024-02-15',
        '2024-02-14',
        0,
        'Đã thanh toán'
    ),
    (
        1,
        'Chuyển khoản',
        'Hai kỳ',
        386027500,
        2,
        '2024-03-15',
        NULL,
        0,
        'Chưa thanh toán'
    ),
    -- Thanh toán cho đơn bán sỉ
    (
        2,
        'Chuyển khoản',
        'Một lần',
        2090000000,
        1,
        '2024-03-10',
        '2024-03-08',
        0,
        'Đã thanh toán'
    ),
    (
        3,
        'Chuyển khoản',
        'Một lần',
        814800000,
        1,
        '2024-03-20',
        '2024-03-18',
        0,
        'Đã thanh toán'
    );

-- ========== INSERT GIAO_XE ==========
INSERT INTO
    giao_xe (
        ma_don_hang,
        ngay_tao_don,
        ngay_du_kien_giao_xe,
        ngay_giao_xe,
        trang_thai,
        ma_nhan_vien
    )
VALUES (
        1,
        '2024-01-15 09:30:00',
        '2024-02-05',
        '2024-02-05',
        'Hoàn thành',
        1
    ),
    (
        2,
        '2024-02-10 14:00:00',
        '2024-02-25',
        '2024-02-25',
        'Hoàn thành',
        1
    ),
    (
        3,
        '2024-02-20 10:30:00',
        '2024-03-05',
        '2024-03-05',
        'Hoàn thành',
        2
    );

-- ========== INSERT PHAN_HOI ==========
INSERT INTO
    phan_hoi (
        ma_khach_hang,
        tieu_de_phan_hoi,
        noi_dung_phan_hoi,
        thoi_gian,
        trang_thai
    )
VALUES (
        2,
        'Hài lòng với xe VF e34',
        'Xe chạy êm, tiết kiệm pin, đội ngũ giao xe chuyên nghiệp',
        '2024-02-07',
        'Đã xử lý'
    ),
    (
        1,
        'Hỏi về trạm sạc',
        'Muốn biết địa điểm trạm sạc gần nhà',
        '2024-02-15',
        'Đã xử lý'
    ),
    (
        4,
        'Tư vấn mua xe',
        'Quan tâm đến xe VF 8',
        '2024-02-20',
        'Chưa xử lý'
    );

-- ========== INSERT XU_LY_PHAN_HOI ==========
INSERT INTO
    xu_ly_phan_hoi (
        ma_phan_hoi,
        noi_dung_xu_ly,
        hinh_thuc_giai_quyet,
        thoi_gian,
        trang_thai,
        ma_nhan_vien
    )
VALUES (
        1,
        'Cảm ơn phản hồi tích cực của khách hàng',
        'Điện thoại',
        '2024-02-07 15:00:00',
        'Hoàn thành',
        1
    ),
    (
        2,
        'Đã gửi danh sách trạm sạc qua email',
        'Email',
        '2024-02-15 10:30:00',
        'Hoàn thành',
        2
    );

-- ========== INSERT LICH_HEN_LAI_THU ==========
INSERT INTO
    lich_hen_lai_thu (
        ma_khach_hang,
        ma_xe,
        ngay_hen,
        gio_hen
    )
VALUES (
        1,
        3,
        '2024-02-25',
        '10:00:00'
    ),
    (
        4,
        4,
        '2024-02-28',
        '14:30:00'
    ),
    (
        5,
        5,
        '2024-03-05',
        '09:00:00'
    );

-- ========== INSERT GIA_SI_DAI_LY ==========
INSERT INTO
    gia_si_dai_ly (
        ma_dai_ly,
        ma_chi_tiet_loai_xe,
        gia_si,
        so_luong_toi_thieu,
        ngay_ap_dung,
        ngay_ket_thuc,
        trang_thai
    )
VALUES (
        2,
        1,
        650000000,
        1,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        2,
        2,
        720000000,
        1,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        2,
        3,
        1100000000,
        1,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        3,
        7,
        420000000,
        1,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        3,
        8,
        510000000,
        1,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        3,
        9,
        1000000000,
        1,
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    );

-- ========== INSERT CHINH_SACH_CHIET_KHAU ==========
INSERT INTO
    chinh_sach_chiet_khau (
        ma_dai_ly,
        loai_chiet_khau,
        muc_chiet_khau,
        dieu_kien_ap_dung,
        ngay_bat_dau,
        ngay_ket_thuc,
        trang_thai
    )
VALUES (
        2,
        'Theo số lượng',
        5.00,
        'Mua từ 2-5 xe',
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        2,
        'Theo số lượng',
        7.50,
        'Mua từ 6-10 xe',
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        3,
        'Theo số lượng',
        3.00,
        'Mua từ 2-4 xe',
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    ),
    (
        3,
        'Theo doanh số',
        6.00,
        'Doanh số từ 5 tỷ',
        '2024-01-01',
        '2024-12-31',
        'Hoạt động'
    );

-- ========== INSERT BAC_CHIET_KHAU_SO_LUONG ==========
INSERT INTO
    bac_chiet_khau_so_luong (
        ma_chinh_sach,
        so_luong_tu,
        so_luong_den,
        phan_tram_chiet_khau
    )
VALUES (1, 2, 5, 5.00),
    (1, 6, 10, 7.50),
    (1, 11, 20, 10.00),
    (3, 2, 4, 3.00),
    (3, 5, 10, 5.00);

-- ========== INSERT BAC_CHIET_KHAU_DOANH_SO ==========
INSERT INTO
    bac_chiet_khau_doanh_so (
        ma_chinh_sach,
        doanh_so_tu,
        doanh_so_den,
        phan_tram_chiet_khau
    )
VALUES (4, 5, 10, 6.00),
    (4, 11, 20, 8.00),
    (4, 21, 50, 10.00);

-- ========== INSERT PHIEU_XUAT_KHO ==========
INSERT INTO
    phieu_xuat_kho (
        ma_don_hang,
        ngay_xuat,
        tong_tien,
        ghi_chu,
        ma_nhan_vien
    )
VALUES (
        1,
        '2024-02-05 09:00:00',
        760000000,
        'Xuất xe VF e34 Plus cho khách lẻ',
        1
    ),
    (
        2,
        '2024-02-25 10:30:00',
        2400000000,
        'Xuất 2 xe VF 8 cho đại lý Quận 1',
        1
    ),
    (
        3,
        '2024-03-05 14:00:00',
        916000000,
        'Xuất 2 xe VF 5 cho đại lý Quận 10',
        2
    );

-- ========== INSERT CHI_TIET_PHIEU_XUAT ==========
INSERT INTO
    chi_tiet_phieu_xuat (ma_phieu_xuat, ma_xe)
VALUES (1, 2),
    (2, 9),
    (2, 10),
    (3, 11),
    (3, 12);

-- ========== INSERT PHIEU_NHAP_KHO ==========
INSERT INTO
    phieu_nhap_kho (
        ngay_nhap,
        ly_do,
        tong_tien,
        ghi_chu,
        ma_nhan_vien,
        ma_dai_ly
    )
VALUES (
        '2024-01-05 08:00:00',
        'Nhập hàng từ nhà máy',
        1450000000,
        'Nhập 2 xe VF e34',
        1,
        1
    ),
    (
        '2024-01-10 10:00:00',
        'Nhập hàng từ nhà máy',
        2650000000,
        'Nhập 2 xe VF 8',
        1,
        1
    ),
    (
        '2024-01-15 09:00:00',
        'Nhập hàng từ nhà máy',
        916000000,
        'Nhập 2 xe VF 5',
        2,
        1
    );

-- ========== INSERT CHI_TIET_PHIEU_NHAP ==========
INSERT INTO
    chi_tiet_phieu_nhap (ma_phieu_nhap, ma_xe)
VALUES (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 7),
    (3, 8);

-- ========== INSERT YEU_CAU_NHAP_HANG ==========
INSERT INTO
    yeu_cau_nhap_hang (
        trang_thai,
        ghi_chu,
        ma_nhan_vien
    )
VALUES (
        'Hoàn thành',
        'Yêu cầu nhập thêm xe VF e34 để phân phối',
        1
    ),
    (
        'Hoàn thành',
        'Yêu cầu nhập xe VF 8 cho kho',
        1
    ),
    (
        'Chờ duyệt',
        'Yêu cầu nhập xe VF 9 mới',
        2
    );

-- ========== INSERT CHI_TIET_YEU_CAU ==========
INSERT INTO
    chi_tiet_yeu_cau (
        ma_yeu_cau,
        ma_chi_tiet_loai_xe,
        so_luong
    )
VALUES (1, 1, 3),
    (1, 2, 2),
    (2, 3, 2),
    (2, 4, 1),
    (3, 5, 2),
    (3, 6, 1);