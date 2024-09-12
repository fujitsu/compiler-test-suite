subroutine s1
 type x8(k)
   integer(1),kind::k
   integer (k) :: a
 end type
 type (x8(8_1)) , allocatable :: v1
 allocate (x8(8):: v1)
end
call s1
 print *,'pass'
end
