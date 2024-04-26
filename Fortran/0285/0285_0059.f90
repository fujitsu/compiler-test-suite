program main
INTEGER :: k=2,l=1
  CHARACTER(len=15):: A(5) = ' '

  associate(aa=>l,bb=>k,cc=>IOL)
   INQUIRE (IOLENGTH=cc) (A(i),i=aa,5,bb) 
  end associate

  OPEN (7,RECL=IOL)
  WRITE(unit=7,'(A)')(A(i),i=1,5,2)

  if(IOL == 45) print*,'pass'
END
