package com.northsea.store.controller;

import com.northsea.store.mapper.BookMapper;
import com.northsea.store.pojo.Book;
import com.northsea.store.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class BookService {
    SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
    public List<Book> getAllBookInfo(){

        //get SqlSession
        SqlSession sqlSession = sqlSessionFactory.openSession();

        //get BookMapper
        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);

        //use bookMapper
        List<Book> books = bookMapper.getAllBookInfo();

        sqlSession.close();

        return books;
    }

    public Book getBookDetail(){
        SqlSession sqlSession = sqlSessionFactory.openSession();

        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);

        Book bookdetail = bookMapper.getBookInfoByParam("id");

        sqlSession.close();
        return bookdetail;
    }

    public void addNewBook(Book book){
        SqlSession sqlSession = sqlSessionFactory.openSession();

        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);

        bookMapper.insertBook("00004", "ABC Book", 1000, "Tom", "English book");

        sqlSession.commit();
        sqlSession.close();
    }
}
