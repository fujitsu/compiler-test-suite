 call s1
 print *,'pass'
 end
module b
interface bb
  module procedure cc
end interface
interface bbb
  module procedure ccc
end interface
interface bbbb
  module procedure cccc
end interface
contains
subroutine cc
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(7),I3)
      EQUIVALENCE  (IJ(4),I2)
      EQUIVALENCE  (IJ(1),I1)
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      WRITE(31,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
end subroutine cc
subroutine ccc
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(4),I2)
      EQUIVALENCE  (IJ(1),I1)
      EQUIVALENCE  (IJ(7),I3)
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      WRITE(31,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
end subroutine ccc
subroutine cccc
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(1),I1)
      EQUIVALENCE  (IJ(7),I3)
      EQUIVALENCE  (IJ(4),I2)
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      WRITE(31,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
end subroutine cccc
end module b
subroutine s1
 use b
  integer a(9)
 call bb
 call bbb
 call bbbb
 rewind 31
  read(31,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(31,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(31,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"

 end
