 call s1
 print *,'pass'
 end
module b
interface bb
  module procedure cc
end interface
interface bbb
  module procedure ccx
end interface
interface bbbb
  module procedure ccy
end interface
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(7),I3)
      EQUIVALENCE  (IJ(4),I2)
      EQUIVALENCE  (IJ(1),I1)
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
contains
subroutine cc
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(2),I1(2))
      EQUIVALENCE  (IJ(5),I2(2))
      EQUIVALENCE  (IJ(8),I3(2))
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      WRITE(39,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
 call ccx
 call ccy
end subroutine cc
 subroutine ccx
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(1+2),I1(3)),(IJ(4+2),I2(3)),(IJ(7),I3)
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      WRITE(39,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
end subroutine ccx
 subroutine ccy
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(3),I1(3)),(IJ(4),I2),(IJ(9),I3(3))
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      WRITE(39,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
end subroutine ccy
end module b
subroutine s1
 use b
  integer a(9)
      WRITE(39,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
 call bb
 call bbb
 call bbbb
 rewind 39
  read(39,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(39,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(39,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(39,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(39,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(39,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"

 end
