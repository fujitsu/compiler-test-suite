program main
INTEGER :: k=5,l=1
  CHARACTER(len=15):: A(5) = ' '

  associate(aa=>l,bb=>k,cc=>IOL,dd=>A)
   INQUIRE (IOLENGTH=cc) (dd(i),i=aa,5,3) 
  end associate

  OPEN (7,RECL=IOL)
  WRITE(unit=7,'(A)')(A(i),i=1,5)

  if(IOL == 30) print*,'pass'
END
