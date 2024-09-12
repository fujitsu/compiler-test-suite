integer j(10)
10 format(a)
j=1
call sub01()
if (j(2).ne.1) write(6,10) 'error'
call sub02()
if (j(2).ne.2) write(6,10) 'error'
j=1
call sub03()
if (j(2).ne.2) write(6,10) 'error'
j=0
call sub04()
call sub06()
print *,'pass'
contains
subroutine sub01()
integer j(10)
j=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine 
subroutine sub02()
j=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine
subroutine sub03()
integer j(10)
j=(/1,2,3,4,5,6,7,8,9,10/)
call sub02()
end subroutine
subroutine sub04()
integer i(10)
call sub05(j)
i=j
if (i(2).ne.200) write(6,11) 'error'
11 format(a)
end subroutine
subroutine sub05(ii)
integer ii(10)
do i=1,10
 ii(i)=i*100
end do
end subroutine
subroutine sub06()
common /com/i1,i2,i3
i1=1;i2=2;i3=3
call sub07()
if (i2.ne.20) write(6,12) 'error'
12 format(a)
end subroutine
subroutine sub07()
common /com/j1,j2,j3
j1=10;j2=20;j3=30
call sub08()
end subroutine
subroutine sub08()
common /com1/j1,j2,j3
j1=10;j2=20;j3=30
end subroutine
end
