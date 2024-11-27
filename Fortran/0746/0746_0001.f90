subroutine s01
integer n1
integer n2
integer n3
integer n4
integer n5
integer n6
!
integer i1(n1)
integer i2(+n2)
integer i3(-n3:0)
integer,dimension(n4):: i4
integer,dimension(+n5):: i5
integer,dimension(-6:-n6):: i6
!
parameter(n1=4, n2=4)
parameter(n3=4, n4=4)
parameter(n5=4, n6=4)
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
integer n1
integer n2
integer n31,n32
integer n4
integer n51,n52
!
integer i1(n1+1)
integer i2(n2+n2)
integer i3(n31+n32)
integer,dimension(1+n4):: i4
integer,dimension(n51+n52):: i5
!
parameter(n1=4, n2=4)
parameter(n31=4, n32=4)
parameter(n4=4, n51=4)
parameter(n52=4)
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
integer n1
integer n2
integer n31,n32,n33
!
integer i1(1+n1+1)
integer i2(n2+n2+n2)
integer i3(n31+n32+n33)
!
parameter(n1=4, n2=4)
parameter(n31=4, n32=4)
parameter(n33=4)
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
