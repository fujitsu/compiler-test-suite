subroutine s01
dimension n1(2)
dimension n2(2)
dimension n3(2)
dimension n4(2)
dimension n5(2)
dimension n6(2)
!
integer i1(n1(1))
integer i2(+n2(1))
integer i3(-n3(1):0)
integer,dimension(n4(1)):: i4
integer,dimension(+n5(1)):: i5
integer,dimension(-6:-n6(1)):: i6
!
parameter (n1=4, n2=4, n3=4)
parameter (n4=4, n5=4, n6=4)
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
dimension n1(2)
dimension n2(2)
dimension n31(2),n32(2)
dimension n4(2)
dimension n51(2),n52(2)
!
integer i1(n1(1)+1)
integer i2(n2(1)+n2(1))
integer i3(n31(1)+n32(1))
integer,dimension(1+n4(1)):: i4
integer,dimension(n51(1)+n52(1)):: i5
!
parameter (n1=4, n2=4, n31=4)
parameter (n32=4, n4=4, n51=4, n52=4)
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
dimension n1(2)
dimension n2(2)
dimension n31(2),n32(2),n33(2)
!
integer i1(1+n1(1)+1)
integer i2(n2(1)+n2(1)+n2(1))
integer i3(n31(1)+n32(1)+n33(1))
!
parameter (n1=4, n2=4, n31=4, n32=4, n33=4)
!
i1=1
i2=1
i3=1
!
if(i1(6)  /= 1) write(6,*) "NG"
if(i2(12) /= 1) write(6,*) "NG"
if(i3(12) /= 1) write(6,*) "NG"
end subroutine


call s01
call s02
call s03
print *,'pass'
end
