subroutine s1(n)
  type x
   integer ::x1
   integer,allocatable::x2
   integer ::x3
  end type
  type (x):: v(n)
  v(2)%x3=1
end
do k=1,2
call s1(2)
end do
print *,'pass'
end
