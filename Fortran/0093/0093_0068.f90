PROGRAM MAIN

COMPLEX::OBJW
REAL::R1,R2
character(50)::D
 OBJW=(3.4,5.44)
     WRITE(D,*)OBJW%RE,OBJW%IM  
     READ (D,*)R1,R2

IF( R1 .ne.3.4 )print*,101
IF( R2 .ne.5.44 )print*,102
 PRINT*,'PASS'


END PROGRAM

