PROGRAM MAIN
  REAL, DIMENSION(96) :: RSX
  DOUBLE PRECISION, DIMENSION(96) :: RD1, RD2
  DATA RSX/96*0.5/

  do i=1,96
     RD1(i) = RSX(i)
     RD2(i) = ACOS(DBLE(RSX(i)))
  enddo
  write(6,1) RD1(1)
  do i=1,96
     if (rd2(i).eq.0) write(6,*) "NG:",i,RD2(i)
  enddo
1 format(f10.4)

END PROGRAM MAIN

