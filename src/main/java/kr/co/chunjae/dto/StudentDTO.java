package kr.co.chunjae.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class StudentDTO {
    private String studentId;
    private String name;
    private String gender; // "M" 또는 "F"
    private int score;

}
