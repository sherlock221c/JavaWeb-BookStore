package com.sherlock.test;

import com.sherlock.dao.BookDao;
import com.sherlock.dao.impl.BookDaoImpl;
import com.sherlock.pojo.Book;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.List;

import static org.junit.Assert.*;

public class BookDaoImplTest {

    private BookDao bookDao = new BookDaoImpl();

    @Test
    public void addBook() {
        bookDao.addBook(new Book(null, "神探夏洛克", "夏福", new BigDecimal(5000), 100, 1, null));
    }

    @Test
    public void deleteBookById() {
        int i = bookDao.deleteBookById(21);
        System.out.println(i);
    }

    @Test
    public void updateBook() {
        bookDao.updateBook(new Book(21, "神探夏洛克", "夏福cc", new BigDecimal(5000), 100, 1, null));
    }

    @Test
    public void queryBookById() {
        System.out.println(bookDao.queryBookById(21));
    }

    @Test
    public void queryBooks() {
        List<Book> books = bookDao.queryBooks();
        for (Book book : books) {
            System.out.println(book);
        }
    }
}