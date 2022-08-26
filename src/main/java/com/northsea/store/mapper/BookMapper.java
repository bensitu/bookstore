package com.northsea.store.mapper;

import com.northsea.store.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
     String insertBook();

     void updateBook();

     void deleteBook();

     Book getBookInfoByID(String id);

     List<Book> getAllBookInfo();

     Book getBookInfoByParam(@Param("id") String id, @Param("name") String name);
}
