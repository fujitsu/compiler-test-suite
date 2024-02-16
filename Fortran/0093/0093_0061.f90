PROGRAM MAIN

COMPLEX,ALLOCATABLE::OBJW(:)
REAL::R1(4)
INTEGER::G,F,Y,S,K,J,I,R
ALLOCATE(OBJW(2))
        
OBJW(1)=(3.44,8.44)
OBJW(2)=(5.55,6.55)

 OPEN (UNIT=71, FILE='fort.76', FORM='UNFORMATTED')
WRITE(UNIT=71) ((((((((OBJW%RE,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
WRITE(UNIT=71) ((((((((OBJW%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.76', FORM='UNFORMATTED')
READ(UNIT=77) ((((((((R1(1),R1(2),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
READ(UNIT=77) ((((((((R1(3),R1(4),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')


IF( R1(1) .ne. 3.44)print*,'101'
IF( R1(2) .ne. 5.55)print*,'102'
IF( R1(3).ne. 8.44)print*,'103'
IF( R1(4).ne. 6.55)print*,'104'





 PRINT*,'PASS'

END PROGRAM

