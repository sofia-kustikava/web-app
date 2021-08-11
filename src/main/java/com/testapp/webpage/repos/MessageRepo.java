package com.testapp.webpage.repos;
import org.springframework.data.repository.CrudRepository;
import com.testapp.webpage.domain.Message;
import java.util.*;

public interface MessageRepo extends CrudRepository<Message, Integer> {

    List<Message> findByTag(String tag);

}
