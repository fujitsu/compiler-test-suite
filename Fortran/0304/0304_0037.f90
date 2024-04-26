PROGRAM MAIN
  IMPLICIT  real*8(D),COMPLEX*16(C)
  integer DY
  real*8     DA10(20),DA30(40)
  complex*16     CD10(20),CD30(20)
  COMMON /BLK2/ COM10(20),CDX
  EQUIVALENCE   (CDX,CD10(1)) 
  EQUIVALENCE   (COM10(1),DA30(1)) 
  integer ans
  ans = 50

  DY=10

  do  I=1,40
     DA30(I) = 0
  enddo

  do I=1,20
     COM10(I) = 1
  enddo

  print *,"COM10-1"

  do I=1,20
     DA10(I) = 4
     DA30(I) = 2.0
  enddo
  print *,"COM10-2"

  I=1
  do K=1,10
     COM10(I) = COM10(I) + 1
     DA10(K) = DA30(I) + 1
     DY = DY + DA10(I)
  enddo
  if(DY == ans) then
     print *,"ok"
  else
     print *,"ng"
  endif
end program
