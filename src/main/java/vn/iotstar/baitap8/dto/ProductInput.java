package vn.iotstar.baitap8.dto;

import lombok.Data;

@Data
public class ProductInput {
    private String title;
    private Integer quantity;
    private String description;
    private String images;
    private Double price;
    private Long categoryId;
}
