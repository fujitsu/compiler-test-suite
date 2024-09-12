module m1
  type x
    integer,allocatable::x2(:)
  end type
  type y
    integer::x2(2)
  end type
contains
integer function   s(v)
 type (x):: v
 s=1
end function
integer function   t(v)
 type (y):: v
 t=1
end function
end
subroutine s1
 use m1
 type (x):: v
 if (s(x([1,2])) /=1) print *,101
 if (s(x(v%x2)   ) /=1) print *,102
allocate(v%x2(2),source=0)
 if (t(y(v%x2)   ) /=1) print *,103
end
call s1
print *,'pass'
end

