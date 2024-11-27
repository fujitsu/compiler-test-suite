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
      EQUIVALENCE  (I3,IJ(7))
      EQUIVALENCE  (I2,IJ(4))
      EQUIVALENCE  (I1,IJ(1))
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      EQUIVALENCE  (IJ(1),I1),(IJ(4),I2),(IJ(7),I3)
      WRITE(1,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
end subroutine cc
subroutine ccc
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (I2,IJ(4))
      EQUIVALENCE  (I1,IJ(1))
      EQUIVALENCE  (I3,IJ(7))
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      EQUIVALENCE  (IJ(1),I1),(IJ(4),I2),(IJ(7),I3)
      WRITE(1,*) IJ,I1(3),I2(3),I3(3)
      if (any(IJ/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
      if (any((/I1,I2,I3/)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
end subroutine ccc
subroutine cccc
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (I3,IJ(7))
      EQUIVALENCE  (I1,IJ(1))
      EQUIVALENCE  (I2,IJ(4))
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
      EQUIVALENCE  (IJ(1),I1),(IJ(4),I2),(IJ(7),I3)
      WRITE(1,*) IJ,I1(3),I2(3),I3(3)
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
 rewind 1
  read(1,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(1,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
  read(1,*)a
      if (any(a/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"

 end
