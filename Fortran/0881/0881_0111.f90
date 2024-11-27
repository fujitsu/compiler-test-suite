PROGRAM MAIN

IMPLICIT NONE

TYPE c1
  INTEGER(kind=4)::a
  REAL(kind=4)::b
  CHARACTER(len=8)::c
END TYPE

TYPE,EXTENDS(c1)::c2
  INTEGER(kind=4)::d
  REAL(kind=4)::e
  TYPE(c1)::obj1
END TYPE

TYPE,EXTENDS(c2)::c3
  INTEGER(kind=4)::g
  REAL(kind=4)::h
  TYPE(c2)::obj2
END TYPE

TYPE,EXTENDS(c3)::c4
  INTEGER(kind=4)::j
  REAL(kind=4)::k
  TYPE(c3)::obj3
END TYPE
 
LOGICAL::x
CLASS(*),POINTER::ptr
TYPE(c4)::obj4
REAL,TARGET::tar_real

obj4%obj3%obj2%obj1%c='testprog'
ptr=>tar_real

x=SAME_TYPE_AS(ptr,obj4%obj3%obj2%obj1)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
