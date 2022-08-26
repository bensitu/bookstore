package com.northsea.store.mapper;

import com.northsea.store.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
     String insertBook(String id, String name, int price, String author, String comment);

     void updateBook(String name, String id);

     void deleteBook(String id);

     Book getBookInfoByID(String id);

     List<Book> getAllBookInfo();

     Book getBookInfoByParam(@Param("id") String id);
}
