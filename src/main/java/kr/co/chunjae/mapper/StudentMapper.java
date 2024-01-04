package kr.co.chunjae.mapper;

import kr.co.chunjae.dto.StudentDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudentMapper {
    void insertStudent(StudentDTO student);
}