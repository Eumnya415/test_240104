package kr.co.chunjae.repository;

import kr.co.chunjae.dto.StudentDTO;
import kr.co.chunjae.mapper.StudentMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentRepository {
    private final StudentMapper studentMapper;

    @Autowired
    public StudentRepository(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    public void save(StudentDTO student) {
        studentMapper.insertStudent(student);
    }
}