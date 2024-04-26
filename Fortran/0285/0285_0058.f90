program main
INTEGER :: k=5,l=1
  CHARACTER(len=15):: A(5) = ' '

  associate(aa=>l,bb=>k,cc=>IOL)
   INQUIRE (IOLENGTH=cc) (A(i),i=aa,bb) 
  end associate

  OPEN (7,RECL=IOL)
  WRITE(unit=7,'(A)')(A(i),i=1,5)

  if(IOL == 75) print*,'pass'
END
