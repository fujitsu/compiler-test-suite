program main
  CHARACTER(len=5):: A(5)='hello'

  associate(cc=>IOL)
   INQUIRE (IOLENGTH=cc) (A(i),i=1,5) 
  end associate

  OPEN (7,RECL=IOL)
  WRITE(unit=7,'(A)')(A(i),i=1,5)

  if(IOL == 25) print*,'pass'
END
