MODULE persons
  IMPLICIT NONE
  PRIVATE
  PUBLIC :: t_person, person_get_name, person_set_name, person_get_num_access
  TYPE t_person
     PRIVATE
     CHARACTER (LEN=20) :: name
     INTEGER :: num_access
  END TYPE t_person
CONTAINS
  SUBROUTINE person_set_name(person, name)
    TYPE (t_person), INTENT(IN OUT) :: person
    CHARACTER (LEN=*), INTENT(IN) :: name
    person % name = name
    person % num_access = 0
  END SUBROUTINE person_set_name

  SUBROUTINE person_get_name(person, name)
    TYPE (t_person), INTENT(IN OUT) :: person
    CHARACTER (LEN=*), INTENT(IN) :: name
    person % name = name
    person % num_access = person % num_access + 1
  END SUBROUTINE person_get_name

  FUNCTION person_get_num_access(person) RESULT(num)
    TYPE (t_person), INTENT(IN) :: person
    INTEGER :: num
    num = person % num_access
  END FUNCTION person_get_num_access
END MODULE persons
MODULE employees
  USE persons

  TYPE t_employee
     TYPE (t_person) :: person
     CHARACTER(LEN=100) :: address
  END TYPE t_employee

CONTAINS
  SUBROUTINE print_all_employees(employee)
    TYPE(t_employee), INTENT(IN OUT) :: employee(100)
    CHARACTER(LEN=20) :: name
    DO i=1,100
       CALL person_get_name(employee(i) % person, name)
       print *, name
    ENDDO
  END SUBROUTINE print_all_employees
END MODULE employees
PROGRAM MAIN
  USE persons
  USE employees
  TYPE (t_person) :: person
  CHARACTER(LEN=20) :: name
  CALL person_set_name(person, 'John')
  CALL person_get_name(person, 'John')
  CALL person_get_name(person, 'john')
  if (person_get_num_access(person)/=2)write(6,*) "NG"
  print *,'pass'
END PROGRAM MAIN
