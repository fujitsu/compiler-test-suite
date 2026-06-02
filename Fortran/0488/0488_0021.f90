MODULE TYPES
  TYPE T
     INTEGER :: K(10)
   CONTAINS
     PROCEDURE :: UUUUU
     GENERIC :: WRITE(unFORMATTED) => UUUUU
  END TYPE T
  type x
   integer::ix
   type(t)::t
   integer::iy
  endtype x
CONTAINS
  SUBROUTINE UUUUU (DTV, UNIT, IOSTAT, IOMSG)
    CLASS(T), INTENT(IN)        :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG
    integer::i

    do i=1,5
    WRITE (UNIT, IOSTAT=IOSTAT, IOMSG=IOMSG) dtv%k
    enddo

  END SUBROUTINE UUUUU
END MODULE TYPES

PROGRAM TEST1
  USE TYPES
  TYPE (x) :: V1
  integer::ix(54)

  v1%ix=1999
  v1%iy=2037
  do i=1,10
  v1%t%k(i)=i
  x1=sin(i*1.0)
  enddo
  WRITE(17)v1
  close(17)
  open(17,form='binary')
  read(17)ix
  write(2,*)ix
print *,'pass'
END PROGRAM TEST1
