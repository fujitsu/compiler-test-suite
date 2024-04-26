integer ,parameter :: p=100
integer a(10)
a=1
a=a
do i=1,10
end do
call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
call sub01()
print *,'pass'
end
subroutine sub01()
integer a(10)
a=1
a=a
do i=1,10
end do
end
subroutine sub02()
integer a(10)
a=1
a=a
do i=1,10
end do
end
subroutine sub03()
integer a(10)
a=1
a=a
do i=1,10
end do
end
subroutine sub04()
integer a(10)
a=1
a=a
do i=1,10
end do
end
subroutine sub05()
integer a(10)
a=1
a=a
do i=1,10
end do
end
subroutine sub06()
integer a(10)
a=1
a=a
do i=1,10
end do
end
subroutine sub07()
integer a(10)
a=1
a=a
do i=1,10
end do
end

subroutine sub0a()
integer(kind=8),parameter :: p8=Z'ffffffffff'
integer(kind=4),parameter :: i4=4
integer(kind=4),parameter :: i101=101
integer a(10)
a=1
a=a
do i=1,10
end do
end


