package com.northsea.store.pojo;

import lombok.Data;

@Data
public class Book {
    private int id;
    private String name;
    private int price;
    private String author;
    private String comment;

    public Book(int id, String name, int price, String author, String comment) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.author = author;
        this.comment = comment;
    }

    public Book() {
    }
}
