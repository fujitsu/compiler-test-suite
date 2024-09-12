MODULE TYPES
  TYPE T
     INTEGER :: K(10)
  END TYPE T
  type x
   integer::ix
   type(t)::t
   integer::iy
  endtype x
END MODULE TYPES

PROGRAM TEST1
  USE TYPES
  type(x) ::z(10,10,10)
  type(x) ::z1
  integer::z2(14)

  do i=1,10
  z1%t%k(i)=i
  enddo
  z1%ix=2015
  z1%iy=1999
  write(16)z1
  close(16)
print *,'pass'
END PROGRAM TEST1

