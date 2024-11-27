call sub01()
print *,'pass'
end
module b
interface bb
 module procedure cc
end interface
contains
subroutine cc
      INTEGER,DIMENSION(9)   :: IJ
      INTEGER,DIMENSION(3)   :: I1,I2,I3
      EQUIVALENCE  (IJ(1),I1),(IJ(4),I2),(IJ(7),I3)
      DATA I1/1,2,3/,&
           I2/4,5,6/,&
           I3/7,8,9/
       do j=1,9
        if (IJ(j).ne.j) write(6,*) "NG"
       end do
       if(I1(3).ne.3) write(6,*) "NG"
       if(I2(3).ne.6) write(6,*) "NG"
       if(I3(3).ne.9) write(6,*) "NG"
end subroutine cc
end module b

subroutine sub01()
use b
call cc
end
