PROGRAM MAIN

IMPLICIT NONE
 
TYPE t1
  INTEGER(KIND=8) ::number1
  INTEGER(KIND=4)::number2
  REAL(KIND=4)::real1
END TYPE
 
TYPE ,EXTENDS(t1)::t2
  TYPE(t1),POINTER::ptr1_t1
  INTEGER(KIND=8) ::number3 
  REAL(KIND=8) ::number4
END TYPE 


TYPE ,EXTENDS(t2)::t3
  TYPE(t2),POINTER::ptr1_t2
  INTEGER(KIND=8) ::number5
  TYPE(t2)::obj1
  INTEGER(KIND=4)::number6
END TYPE 

CLASS(t2),POINTER::ptr_t2
call sub(ptr_t2)
contains 

    SUBROUTINE sub(dmyptr_t2)
      CLASS(t2),POINTER:: dmyptr_t2
      TYPE(t3),TARGET::ptr_t3
      TYPE(t2)::test_obj
      ptr_t3%number3=1
      ptr_t3%number4=2
      ptr_t3%number5=3
      ptr_t3%number6=4

      dmyptr_t2=>ptr_t3 
      test_obj=dmyptr_t2     
      print*,test_obj%number3
    END SUBROUTINE

END PROGRAM
