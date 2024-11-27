subroutine sub1
 dimension      :: i1(10)
 integer(kind=1):: i1
 dimension      :: i2(10)
 integer(kind=2):: i2
 dimension      :: i4(10)
 integer(kind=4):: i4
 dimension      :: i8(10)
 integer(kind=8):: i8
 dimension      :: r4(10)
 real(kind=4)   :: r4
 dimension      :: r8(10)
 real(kind=8)   :: r8
 dimension      :: n(10)
 integer        :: n
 parameter(i1=1)
 parameter(i2=2)
 parameter(i4=4)
 parameter(i8=8)
 parameter(r4=4)
 parameter(r8=8)
 parameter(n=15)

 if (i1(1) /=1) write(6,*) "NG"
 if (i2(2) /=2) write(6,*) "NG"
 if (i4(3) /=4) write(6,*) "NG"
 if (i8(4) /=8) write(6,*) "NG"
 if (r4(5) /=4.0) write(6,*) "NG"
 if (r8(6) /=8.0) write(6,*) "NG"
 if (n(7) /=15) write(6,*) "NG"
end subroutine sub1

subroutine sub2
 dimension      :: i1(10)
 integer(kind=1):: i1
 dimension      :: i2(10)
 integer(kind=2):: i2
 dimension      :: i4(10)
 integer(kind=4):: i4
 dimension      :: i8(10)
 integer(kind=8):: i8
 dimension      :: r4(10)
 real(kind=4)   :: r4
 dimension      :: r8(10)
 real(kind=8)   :: r8
 dimension      :: n(10)
 integer        :: n
 parameter(i1=1)
 parameter(i2=2)
 parameter(i4=4)
 parameter(i8=8)
 parameter(r4=4)
 parameter(r8=8)
 parameter(n=15)
 integer  :: ii(n(5))

 if (i1(1) /=1) write(6,*) "NG"
 if (i2(2) /=2) write(6,*) "NG"
 if (i4(3) /=4) write(6,*) "NG"
 if (i8(4) /=8) write(6,*) "NG"
 if (r4(5) /=4.0) write(6,*) "NG"
 if (r8(6) /=8.0) write(6,*) "NG"
 if (n(7) /=15) write(6,*) "NG"

 ii=1

 if (ii(1) /=1) write(6,*) "NG"
end subroutine sub2

call sub1
call sub2
 print *,'pass'
end
