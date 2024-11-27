subroutine sub1
 dimension      :: i1(10)
 integer(kind=1),parameter:: i1=1
 dimension      :: i2(10)
 integer(kind=2),parameter:: i2=2
 dimension      :: i4(10)
 integer(kind=4),parameter:: i4=4
 dimension      :: i8(10)
 integer(kind=8),parameter:: i8=8
 dimension      :: r4(10)
 real(kind=4),parameter   :: r4=4.0
 dimension      :: r8(10)
 real(kind=8),parameter   :: r8=8.0
 dimension      :: n(10)
 integer(kind=4),parameter   :: n=1
 if (i1(5) /=1) write(6,*) "NG"
 if (i2(1) /=2) write(6,*) "NG"
 if (i4(2) /=4) write(6,*) "NG"
 if (i8(3) /=8) write(6,*) "NG"
 if (r4(4) /=4.0) write(6,*) "NG"
 if (r8(5) /=8.0) write(6,*) "NG"
 if (n(6) /=1) write(6,*) "NG"
end subroutine sub1

subroutine sub2
 dimension      :: i1(10)
 integer(kind=1),parameter:: i1=1
 dimension      :: i2(10)
 integer(kind=2),parameter:: i2=2
 dimension      :: i4(10)
 integer(kind=4),parameter:: i4=4
 dimension      :: i8(10)
 integer(kind=8),parameter:: i8=8
 dimension      :: r4(10)
 real(kind=4),parameter   :: r4=4.0
 dimension      :: r8(10)
 real(kind=8),parameter   :: r8=8.0
 dimension      :: n(10)
 integer(kind=4),parameter   :: n=1
 integer  :: ii(n(4))
 if (i1(5) /=1) write(6,*) "NG"
 if (i2(1) /=2) write(6,*) "NG"
 if (i4(2) /=4) write(6,*) "NG"
 if (i8(3) /=8) write(6,*) "NG"
 if (r4(4) /=4.0) write(6,*) "NG"
 if (r8(5) /=8.0) write(6,*) "NG"
 if (n(6) /=1) write(6,*) "NG"

 ii=1

 if (ii(1) /=1) write(6,*) "NG"
end subroutine sub2

call sub1
call sub2
 print *,'pass'
end
