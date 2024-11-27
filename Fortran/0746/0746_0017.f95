subroutine sub1
 integer(kind=1),parameter:: i1=1
 integer(kind=2),parameter:: i2=2
 integer(kind=4),parameter:: i4=4
 integer(kind=8),parameter:: i8=8
 real(kind=4),parameter   :: r4=4.0
 real(kind=8),parameter   :: r8=8.0
 integer(kind=4),parameter   :: n=1
 if (i1 /=1) write(6,*) "NG"
 if (i2 /=2) write(6,*) "NG"
 if (i4 /=4) write(6,*) "NG"
 if (i8 /=8) write(6,*) "NG"
 if (r4 /=4.0) write(6,*) "NG"
 if (r8 /=8.0) write(6,*) "NG"
 if (n /=1) write(6,*) "NG"
end subroutine sub1

subroutine sub2
 integer(kind=1),parameter:: i1=1
 integer(kind=2),parameter:: i2=2
 integer(kind=4),parameter:: i4=4
 integer(kind=8),parameter:: i8=8
 real(kind=4),parameter   :: r4=4.0
 real(kind=8),parameter   :: r8=8.0
 integer(kind=4),parameter   :: n=1
 integer  :: ii(n)
 if (i1 /=1) write(6,*) "NG"
 if (i2 /=2) write(6,*) "NG"
 if (i4 /=4) write(6,*) "NG"
 if (i8 /=8) write(6,*) "NG"
 if (r4 /=4.0) write(6,*) "NG"
 if (r8 /=8.0) write(6,*) "NG"
 if (n /=1) write(6,*) "NG"

 ii=1

 if (ii(1) /=1) write(6,*) "NG"
end subroutine sub2

call sub1
call sub2
 print *,'pass'
end
