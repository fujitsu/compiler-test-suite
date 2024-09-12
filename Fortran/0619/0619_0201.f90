subroutine s1(k)
 type x
    integer,allocatable::a(:)
 end type
 type(x)::y( k)
 type(x)::z( 3)
 if (allocated(y(3)%a))print *,101
 if (allocated(z(3)%a))print *,102
end
call s1(3)
print *,'pass'
end
 
