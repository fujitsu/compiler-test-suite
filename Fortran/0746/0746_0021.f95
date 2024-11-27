module mod
 integer(kind=1):: i1
 integer(kind=2):: i2
 integer(kind=4):: i4
 integer(kind=8):: i8
 real(kind=4)   :: r4
 real(kind=8)   :: r8
 integer        :: n
 parameter(i1=1)
 parameter(i2=2)
 parameter(i4=4)
 parameter(i8=8)
 parameter(r4=4)
 parameter(r8=8)
 parameter(n=15)
contains
subroutine sub1
 if (i1 /=1) write(6,*) "NG"
 if (i2 /=2) write(6,*) "NG"
 if (i4 /=4) write(6,*) "NG"
 if (i8 /=8) write(6,*) "NG"
 if (r4 /=4.0) write(6,*) "NG"
 if (r8 /=8.0) write(6,*) "NG"
 if (n /=15) write(6,*) "NG"
end subroutine sub1
subroutine sub2
 integer  :: ii(n)
 if (i1 /=1) write(6,*) "NG"
 if (i2 /=2) write(6,*) "NG"
 if (i4 /=4) write(6,*) "NG"
 if (i8 /=8) write(6,*) "NG"
 if (r4 /=4.0) write(6,*) "NG"
 if (r8 /=8.0) write(6,*) "NG"
 if (n /=15) write(6,*) "NG"

 ii=1

 if (ii(1) /=1) write(6,*) "NG"
end subroutine sub2
end module

use mod
call sub1
call sub2
 print *,'pass'
end
