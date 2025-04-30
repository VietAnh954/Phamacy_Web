<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="sidebar">
        <div class="filter-section">
            <h4>Lọc sản phẩm</h4>

            <!-- Price Filter -->
            <div class="price-filter">
                <h5>Giá</h5>
                <form action="/filter" method="GET">
                    <div class="form-group">
                        <input type="range" class="form-range" min="0" max="1000000" id="priceRange">
                        <div class="price-inputs">
                            <input type="number" name="minPrice" placeholder="Giá từ">
                            <input type="number" name="maxPrice" placeholder="Đến">
                        </div>
                    </div>
                </form>
            </div>

            <!-- Origin Filter -->
            <div class="origin-filter">
                <h5>Xuất xứ</h5>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="origin" value="vietnam">
                    <label class="form-check-label">Việt Nam</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="origin" value="imported">
                    <label class="form-check-label">Nhập khẩu</label>
                </div>
            </div>

            <!-- Categories -->
            <div class="categories">
                <h5>Danh mục</h5>
                <ul class="list-unstyled">
                    <li><a href="/category/thuoc-bo">Thuốc bổ</a></li>
                    <li><a href="/category/thuoc-dau-dau">Thuốc đau đầu</a></li>
                    <li><a href="/category/vitamin">Vitamin</a></li>
                    <!-- Thêm các danh mục khác -->
                </ul>
            </div>
        </div>
    </div>