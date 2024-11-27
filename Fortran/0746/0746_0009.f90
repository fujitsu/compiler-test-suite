subroutine s01
dimension n1(2),n2(2),n3(2),n4(2),n5(2),n6(2)
!
integer,parameter::n1=4
integer,parameter::n2=4
integer,parameter::n3=4
integer,parameter::n4=4
integer,parameter::n5=4
integer,parameter::n6=4
!
integer i1(n1(1))
integer i2(+n2(1))
integer i3(-n3(1):0)
dimension i4(n4(1))
dimension i5(+n5(1))
dimension i6(-6:-n6(1))
!
i1=1
i2=1
i3=1
i4=1
i5=1
i6=1
!
if(i1(4)  /= 1) write(6,*) "NG"
if(i2(4)  /= 1) write(6,*) "NG"
if(i3(-4) /= 1) write(6,*) "NG"
if(i4(4)  /= 1) write(6,*) "NG"
if(i5(4)  /= 1) write(6,*) "NG"
if(i6(-4) /= 1) write(6,*) "NG"
end subroutine

subroutine s02
dimension n1(2),n2(2),n31(2),n32(2),n4(2),n51(2),n52(2)
!
integer,parameter::n1=4
integer,parameter::n2=4
integer,parameter::n31=4
integer,parameter::n32=4
integer,parameter::n4=4
integer,parameter::n51=4
integer,parameter::n52=4
!
integer i1(n1(1)+1)
integer i2(n2(1)+n2(1))
integer i3(n31(1)+n32(1))
integer,dimension(1+n4(1)):: i4
integer,dimension(n51(1)+n52(1)):: i5
!
i1=1
i2=1
i3=1
i4=1
i5=1
!
if(i1(5)  /= 1) write(6,*) "NG"
if(i2(8)  /= 1) write(6,*) "NG"
if(i3(8)  /= 1) write(6,*) "NG"
if(i4(5)  /= 1) write(6,*) "NG"
if(i5(8)  /= 1) write(6,*) "NG"
end subroutine

subroutine s03
dimension n1(2),n2(2),n31(2),n32(2),n33(2)
!
integer,parameter::n1=4
integer,parameter::n2=4
integer,parameter::n31=4
integer,parameter::n32=4
integer,parameter::n33=4
!
integer i1(1+n1(1)+1)
integer i2(n2(1)+n2(1)+n2(1))
integer i3(n31(1)+n32(1)+n33(1))
!
i1=1
i2=1
i3=1
!
if(i1(6)  /= 1) write(6,*) "NG"
if(i2(12) /= 1) write(6,*) "NG"
if(i3(12) /= 1) write(6,*) "NG"
end subroutine

subroutine s04
dimension n1(2)
!
integer,parameter::n1=4
integer i1(BIT_SIZE(n1(1)))
!
i1=1
!
if(i1(1)  /= 1) write(6,*) "NG"
end subroutine

subroutine s06
dimension n1(2)
!
!
character(LEN=8),parameter::n1='12345678'
integer i1(LEN(n1(1)))
!
i1=1
!
if(i1(1)  /= 1) write(6,*) "NG"
end subroutine

subroutine s07
dimension n1(2)
!
!
integer,parameter::n1=4
integer i1(DIGITS(n1(1)))
!
i1=1
!
if(i1(1)  /= 1) write(6,*) "NG"
end subroutine

subroutine s08
dimension n1(2)
!
!
integer,parameter::n1=4
character(LEN=n1(1)):: i1
!
i1='1234'
!
if(i1  /= '1234') write(6,*) "NG"
end subroutine

subroutine s09
dimension n1(2),n2(2),n31(2),n32(2)
!
integer,parameter::n1=4
integer,parameter::n2=4
integer,parameter::n31=4
integer,parameter::n32=4
!
character(LEN=1+n1(1)):: i1
character(LEN=n2(1)+n2(1)):: i2
character(LEN=n31(1)+n32(1)):: i3
!
i1='12345'
i2='12345678'
i3='12345678'
!
if(i1  /= '12345') write(6,*) "NG"
if(i2  /= '12345678') write(6,*) "NG"
if(i3  /= '12345678') write(6,*) "NG"
end subroutine

subroutine s10
dimension n1(2),n2(2),n31(2),n32(2),n33(2)
!
integer,parameter::n1=4
integer,parameter::n2=2
integer,parameter::n31=1
integer,parameter::n32=2
integer,parameter::n33=(-1)
!
character(LEN=1+n1(1)+1):: i1
character(LEN=n2(1)+n2(1)+n2(1)):: i2
character(LEN=n31(1)+n32(1)+n33(1)):: i3
!
i1='123456'
i2='123456'
i3='12'
!
if(i1  /= '123456') write(6,*) "NG"
if(i2  /= '123456') write(6,*) "NG"
if(i3  /= '12') write(6,*) "NG"
end subroutine

call s01
call s02
call s03
call s04
call s06
call s07
call s08
call s09
call s10
print *,'pass'
end
