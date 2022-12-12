-- add watch_type
insert into watch_type (id, name, is_delete) values (1, 'Nam', 0);
insert into watch_type (id, name, is_delete) values (2, 'Nữ', 0);

-- add watch_producer
insert into watch_producer (id, name, is_delete) values (1, 'Seiko', 0);
insert into watch_producer (id, name, is_delete) values (2, 'Orient', 0);
insert into watch_producer (id, name, is_delete) values (3, 'Tissot', 0);
insert into watch_producer (id, name, is_delete) values (4, 'Citizen', 0);
insert into watch_producer (id, name, is_delete) values (5, 'Casio', 0);
insert into watch_producer (id, name, is_delete) values (6, 'Daniel', 0);
insert into watch_producer (id, name, is_delete) values (7, 'Saga', 0);


-- add watch
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (1, 'Casio World', '1300000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2017/07/AE-1200WHD-1AVDF-399x399.jpg', 'Đồng hồ nam Casio AE1200WHD có mặt đồng hồ vuông to với phong cách thể thao, mặt số điện tử với những tính năng hiện đại tiện dụng, kết hợp với dây đeo bằng kim loại đem lại vẻ mạnh mẽ cá tính dành cho phái nam.', 0, 1, 5);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (2, 'Citizen BI5072', '3600000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2018/09/212_BI5072-01A-399x399.jpg', 'Ẩn chứa dưới vẻ ngoài giản dị của mẫu Citizen BI5072-01A với mẫu dây da lịch lãm tông màu nâu, các chi tiết vạch số tạo hình mỏng chứa đựng sự tinh tế sang trọng khi được bao phủ tông màu vàng nổi bật.', 0, 1, 4);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (3, 'Orient Open', '11700000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2019/04/36_RA-AR0001S10B-399x399.jpg', 'Mẫu Orient RA-AR0001S10B thiết kế đặc trưng Open Heart với ô chân kính lộ ra 1 phần của bô máy cơ tạo nên vẻ độc đáo trước mặt kính Sapphire.', 0, 1, 2);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (4, 'Orient Open', '9000000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2019/09/RA-AR0004S10B-399x399.jpg', 'Mẫu Orient RA-AR0004S10B điểm nhấn nổi bật với thiết kế máy cơ lộ tim vẻ ngoài độc đáo trên nền mặt trắng size 40mm, vỏ máy cơ dày dặn nam tính sang trọng với kim loại mạ bạc.', 0, 1, 2);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (5, 'Orient SK', '7800000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2019/07/RA-AA0B02R19B-399x399.jpg', 'Mẫu Orient RA-AA0B02R19B phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.', 0, 1, 2);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (6, 'Tissot Le Locle', '20500000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2018/05/95_T006.407.22.033.00-1-399x399.jpg', 'Mẫu đồng hồ T006.407.22.033.00 nổi bật cùng các chi tiết núm vặn cho đến nền cọc số phong cách chữ la mã tạo nét mỏng cách tân khoác lên vẻ sang trọng thời trang cho phái mạnh đến từ thương hiệu Tissot.', 0, 1, 3);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (7, 'Tissot Le Locle', '18800000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2017/09/T006.407.36.263.00-399x399.jpg', 'Chiếc đồng hồ Tissot T006.407.36.263.00 thuộc bộ sưu tập Tissot Le Locle Powermatic 80 mang đến sự sang trọng và lịch lãm dành cho quý ông. Sử dụng bộ máy cơ tự động có thời gian trữ cót lên đến 80 giờ.', 0, 1, 3);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (8, 'Tissot Le Locle', '15700000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2017/07/T006.407.16.033.00-1-399x399.jpg', 'Mẫu Tissot T006.407.16.033.00 với thiết kế chữ số được in theo phong cách chữ la mã mang đậm nét cổ điển trên nền mặt kính Sapphire, kết hợp cùng dây đeo bằng da có vân tăng thêm vẻ lịch lãm.', 0, 1, 3);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (9, 'Casio LTP', '1600000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2017/08/LTP-V300L-4AUDF-399x399.jpg', 'Đồng hồ nữ Casio LTP-V300L-4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh.', 0, 2, 5);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (10, 'Citizen EM0503', '6300000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2017/09/55_EM0503-83X-399x399.jpg', 'Mẫu đồng hồ Citizen EM0503-83X tạo điểm nhấn nổi bật với vỏ máy cùng dây đeo vàng hồng thời trang sang trọng cho các phái nữ, ấn tượng với Pin đồng hồ sử dụng công nghệ hiện đại Eco-Drive (Năng Lượng Ánh Sáng).', 0, 2, 4);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (11, 'Daniel Wellington', '4000000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2018/09/518_DW00100219-399x399.jpg', 'Mẫu đồng hồ DW00100219 vẻ ngoài giản dị đặc trưng đến từ thương hiệu Daniel Wellington, các chi tiết đồng hồ tạo nét thanh mảnh mang lại sự trẻ trung thời trang cho các phái đẹp với mẫu dây lưới vàng hồng.', 0, 2, 6);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (12, 'Daniel Wellington', '4800000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2021/10/DW00100438-399x399.jpg', 'Mẫu Daniel Wellington DW00100438 mặt số vuông kiểu dáng nhỏ nhắn trẻ trung cho phái đẹp, điểm nhấn nổi bật cùng với thiết kế siêu mỏng với phần vỏ máy pin chỉ dày 6mm.', 0, 2, 6);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (13, 'Saga 53375', '12320000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2021/11/53375-SVMWBK-2-399x399.jpg', 'Mẫu Saga 53375-SVMWBK-2 phiên bản 12 viên đá Swarovski được đính trên nền mặt số kích thước 34mm với tone màu trắng xà cừ tạo nên vẻ ngoài thời trang sang trọng dành cho phái đẹp.', 0, 2, 7);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (14, 'Saga 53766', '7500000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2021/03/53766-SVSVSV-2-399x399.jpg', 'Mẫu Saga 53766-SVSVSV-2 phiên bản dây vỏ mạ bạc sang trọng, điểm nhấn nổi bật với thiết kế thời trang đính đá pha lê Swaroski trên nền mặt số trắng họa tiết trải tia nhẹ.', 0, 2, 7);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (15, 'Tissot Everytime', '7600000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2017/09/T109.210.33.031.00-399x399.jpg', 'Chiếc đồng hồ Tissot T109.210.33.031.00 Everytime sở hữu bộ máy Swiss Made, kính sapphire chống trầy, dây đeo sang trọng, mỏng nhẹ cùng màu sắc vàng hồng thời thượng sẽ khiến chị em trông thật quyến rũ và quý phái.', 0, 2, 3);
insert into watch (id, name, price, discount, image, detail, is_delete, watch_type_id, watch_producer_id) values (16, 'Tissot T094', '9700000', '0', 'https://cdn3.dhht.vn/wp-content/uploads/2017/08/T094.210.11.111.00-399x399.jpg', 'Đồng hồ Tissot T094.210.11.111.00 có mặt số tròn nhỏ nhắn, kim chỉ và vạch số mỏng tinh tế nổi bật trên nền số màu trắng trang nhã, dây đeo kim loại bằng chất liệu thép không gỉ mạ bạc sáng bóng, đem lại phong cách quyến rũ.', 0, 2, 3);

-- add user
insert into user (username, password, is_delete) values ('vkunkel0', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ppulley1', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('wkleinhausen2', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('idoick3', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('rpalin4', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('lgillebride5', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('rskylett6', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('lgrossman7', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ralbro8', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('jtwyford9', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('groberdsa', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('zolliffb', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ldaykinc', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('cstanyardd', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('scoatene', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('dbretonf', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('abristog', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('kmacallisterh', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('wforthi', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('jpitcaithlyj', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ljoustk', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('rdavsonl', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('admin', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('rlomazn', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ssauvano', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('customer', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('thradskyq', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('dcherrettr', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('pbisleys', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('elockett', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('addmin', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('mclarson0', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('chancell1', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('dranscome2', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('tromeo3', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('cpulman4', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('mtorel5', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('iyeats6', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ehevner7', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('phover8', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('sbirrel9', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ckoenea', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('epaneb', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('pgreggersenc', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ipottesd', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('gsheepye', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('wstrangwoodf', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('gbarriballg', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ssodorh', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('tchapplei', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('abranchflowerj', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('gabyssk', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('wdanneill', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('fgyurkom', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('dmillardn', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('daspinalo', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('kduftonp', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('cwilkensonq', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('cmatteottir', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('employee', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('cquinceet', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);

-- add Roles
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('1', 0, 'ROLE_ADMIN');
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('2', 0, 'ROLE_EMPLOYEE');
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('3', 0, 'ROLE_CUSTOMER');

-- add user_role
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('admin', '1',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('admin', '2',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('admin', '3',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('employee', '2',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('employee', '3',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('customer', '3',0);

-- add customer
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (1, 'Barnie Boscher', 2, 'bboscher0@vistaprint.com', '5', '0909850091', 'abristog', '578856430', '1981-05-22', 0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (2, 'Smith Pattisson', 0, 'spattisson1@unesco.org', '2', '0909389535', 'addmin', '008204972', '1999-02-01',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (3, 'Ruthanne Puckham', 1, 'rpuckham2@samsung.com', '37935', '0904179229', 'abranchflowerj', '623454746', '1985-04-16',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (4, 'Dael Philippsohn', 2, 'dphilippsohn3@wiley.com', '00617', '0902545816', 'cstanyardd', '085658315', '2001-05-23',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (5, 'Tasia Heyball', 0, 'theyball4@army.mil', '5', '0904269448', 'customer', '187876649', '1984-08-01',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (6, 'Dalila Blindt', 0, 'dblindt5@yellowbook.com', '99', '0906017553', 'dbretonf', '589646621', '1999-01-13',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (7, 'Kain Staves', 2, 'kstaves6@loc.gov', '5', '0905355065', 'dcherrettr', '881520441', '1994-02-12',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (8, 'Dasya Giraudeau', 2, 'dgiraudeau7@gizmodo.com', '74582', '0908127322', 'elockett', '548151007', '1993-09-19',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (9, 'Alwin Guage', 1, 'aguage8@google.es', '874', '0907684254', 'groberdsa', '459178610', '1993-08-31',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (10, 'Peterus McNamee', 2, 'pmcnamee9@economist.com', '742', '0904645577', 'idoick3', '319644164', '1981-11-06',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (11, 'Olimpia Culbard', 1, 'oculbarda@biblegateway.com', '54', '0903958820', 'jpitcaithlyj', '217742362', '2004-09-21',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (12, 'Gael Boram', 1, 'gboramb@narod.ru', '87', '0900131745', 'jtwyford9', '153899725', '1988-09-21',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (13, 'Xylia Tabrett', 1, 'xtabrettc@skyrock.com', '34828', '0907705840', 'kmacallisterh', '876640657', '2000-02-24',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (14, 'Tabby Frapwell', 1, 'tfrapwelld@4shared.com', '76', '0900801599', 'ldaykinc', '086760931', '1988-10-15',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (15, 'Vance Wharmby', 2, 'vwharmbye@squarespace.com', '460', '0900874836', 'lgillebride5', '051920109', '1998-10-10',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (16, 'Clo Maryon', 2, 'cmaryonf@craigslist.org', '64', '0905128238', 'lgrossman7', '926846990', '1987-02-07',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (17, 'Iolanthe Trammel', 1, 'itrammelg@unblog.fr', '27574', '0909177227', 'ljoustk', '049697259', '1983-09-26',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (18, 'Winny Weigh', 0, 'wweighh@stumbleupon.com', '60', '0902997392', 'pbisleys', '394428330', '1995-05-24',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (19, 'Valida Stollsteiner', 0, 'vstollsteineri@1688.com', '268', '0905392315', 'ppulley1', '718482370', '2000-10-29',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (20, 'Elsworth Christoforou', 2, 'echristoforouj@webeden.co.uk', '05', '0902216030', 'ralbro8', '359284400', '2001-10-14',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (21, 'Elna Freathy', 0, 'efreathyk@ehow.com', '6', '0908195242', 'rdavsonl', '147745186', '1982-04-20',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (22, 'Baillie Alabastar', 1, 'balabastarl@godaddy.com', '96', '0909431690', 'rlomazn', '888399782', '1994-01-25',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (23, 'Saunder Timson', 0, 'stimsonm@oracle.com', '79856', '0904878157', 'rpalin4', '991125099', '1985-12-18',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (24, 'Roby Northwood', 1, 'rnorthwoodn@barnesandnoble.com', '3', '0903919091', 'rskylett6', '555051304', '1995-01-04',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (25, 'Nelle Ortells', 1, 'nortellso@mac.com', '4', '0903495537', 'scoatene', '095956778', '2004-01-15',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (26, 'Minnnie Christofides', 2, 'mchristofidesp@usa.gov', '68469', '0908113141', 'ssauvano', '573485948', '1982-01-28',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (27, 'Starla Ringe', 2, 'sringeq@bizjournals.com', '09251', '0903917466', 'thradskyq', '697764799', '1988-08-06',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (28, 'Daffie Garrat', 2, 'dgarratr@businessweek.com', '428', '0907766438', 'vkunkel0', '017454883', '1986-03-08',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (29, 'Bettine Paten', 2, 'bpatens@ed.gov', '7605', '0901660604', 'zolliffb', 'wforthi', '1988-07-20',0);
insert into customer (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (30, 'Gardner Couldwell', 2, 'gcouldwellt@reuters.com', '7', '0900383254', 'wkleinhausen2', '742660996', '2003-05-09',0);

-- add employee
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (1, 'Blayne Prevost',0, 'bprevost0@bravesites.com', '89', '0904711635', 'admin', '271181455', '1994-01-17', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (2, 'Arnaldo Humphrys',0, 'ahumphrys1@seattletimes.com', '1', '0901458194', 'chancell1', '970821850', '1983-07-13', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (3, 'Diane Englefield',0, 'denglefield2@ihg.com', '84196', '0907741438', 'ckoenea', '872766984', '1997-07-01',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (4, 'Trish Emett',1, 'temett3@si.edu', '0252', '0909550396', 'cmatteottir', '003583535', '1996-03-12',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (5, 'Eveline Scrancher',1, 'escrancher4@nasa.gov', '01', '0904111806', 'cpulman4', '719520951', '1986-05-25',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (6, 'Miner Pickin',1, 'mpickin5@eepurl.com', '9', '0901182013', 'cquinceet', '232636916', '1998-06-16', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (7, 'Kailey Sutliff',1, 'ksutliff6@nih.gov', '51', '0901369239', 'cwilkensonq', '113692928', '1995-11-24', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (8, 'Julia Chaston',1, 'jchaston7@github.com', '82333', '0904093102', 'daspinalo', '908722218', '1995-02-24', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (9, 'Minta Habbin',1, 'mhabbin8@zimbio.com', '23', '0909527078', 'dmillardn', '374401846', '2000-04-18', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (10, 'Michale Sancho',1, 'msancho9@baidu.com', '1', '0906512372', 'dranscome2', '334047381', '1995-07-01', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (11, 'Delano Sandyford',1, 'dsandyforda@drupal.org', '4', '0905583811', 'ehevner7', '084832658', '1986-01-16', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (12, 'Oralia Koppens',1, 'okoppensb@yelp.com', '32', '0905939819', 'employee', '460811363', '1989-07-20', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (16, 'Isidro Champ',1, 'ichampf@flickr.com', '0', '0901292734', 'gbarriballg', '396539765', '1989-09-05',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (17, 'Gideon Ilewicz',1, 'gilewiczg@go.com', '56581', '0901252995', 'gsheepye', '339694635', '2003-04-30',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (18, 'Hirsch Pennyman',1, 'hpennymanh@pcworld.com', '254', '0908378090', 'ipottesd', '394650970', '2004-03-12',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (19, 'Nerty Whelan',1, 'nwhelani@nydailynews.com', '7', '0908277605', 'iyeats6', '403781203', '1987-08-12', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (20, 'Evie MacAloren',1, 'emacalorenj@sun.com', '946', '0901024144', 'kduftonp', '694958151', '2000-01-16', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (21, 'Ezechiel Durbyn',0, 'edurbynk@google.co.uk', '28517', '0908770199', 'mclarson0', '338403808', '1999-02-26', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (22, 'Stinky Le Pruvost',1, 'slel@bloglovin.com', '9017', '0908022164', 'mtorel5', '345339026', '2003-08-20', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (23, 'Patrice Leare',0, 'plearem@dion.ne.jp', '2401', '0909081830', 'pgreggersenc', '776460111', '1986-08-30', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (24, 'Brock Ludman',0, 'bludmann@umn.edu', '77', '0902819940', 'phover8', '999182766', '1995-05-27', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (26, 'Joni Gallant',1, 'jgallantp@github.com', '799', '0904045208', 'ssodorh', '132994398', '1981-07-24', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (27, 'Peterus Deedes',0, 'pdeedesq@dion.ne.jp', '24517', '0902310904', 'tchapplei', '220549382', '1988-03-23', 0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (28, 'Yancy Harcourt',1, 'yharcourtr@go.com', '19240', '0906352299', 'tromeo3', '718559223', '1993-06-13',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (29, 'Jeffrey Cavet',1, 'jcavets@google.ru', '6', '0904461170', 'wdanneill', '833739166', '1989-07-26',0);
insert into employee (id, name, gender, email, address, phone_number, username, id_card, birthday, is_delete) values (30, 'Danya Ghelardoni',1, 'dghelardonit@foxnews.com', '616', '0902379936', 'wstrangwoodf', '057012847', '1983-01-04',0);

-- add order_detail
insert into order_detail (id, date_payment, quantity, is_delete, customer_id, watch_id) values (1, '2022-02-11', '5', 0, '1', '2');
insert into order_detail (id, date_payment, quantity, is_delete, customer_id, watch_id) values (2, '2022-03-11', '2', 0, '2', '3');
insert into order_detail (id, date_payment, quantity, is_delete, customer_id, watch_id) values (3, '2022-04-11', '1', 0, '3', '1');
insert into order_detail (id, date_payment, quantity, is_delete, customer_id, watch_id) values (4, '2022-05-11', '3', 0, '4', '5');
insert into order_detail (id, date_payment, quantity, is_delete, customer_id, watch_id) values (5, '2022-06-11', '2', 0, '6', '6');


