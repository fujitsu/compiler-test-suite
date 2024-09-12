subroutine s1
 type x(k)
   integer(8),kind::k
   integer (k) :: a
 end type
 type (x(8)) , allocatable :: v
 allocate (x(8):: v)
end
call s1
 print *,'pass'
end
