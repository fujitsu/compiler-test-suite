subroutine s1
 type x8(k)
   integer(8),kind::k
   integer (k) :: a
 end type
 type (x8(8_1)) , allocatable :: v1
 type (x8(8_2)) , allocatable :: v2
 type (x8(8_4)) , allocatable :: v4
 type (x8(8_8)) , allocatable :: v8
 allocate (x8(8_1):: v1)
 deallocate(v1)
 allocate (x8(8_2):: v1)
 deallocate(v1)
 allocate (x8(8_4):: v1)
 deallocate(v1)
 allocate (x8(8_8):: v1)
 deallocate(v1)
 allocate (x8(8_1):: v2)
 deallocate(v2)
 allocate (x8(8_2):: v2)
 deallocate(v2)
 allocate (x8(8_4):: v2)
 deallocate(v2)
 allocate (x8(8_8):: v2)
 deallocate(v2)
 allocate (x8(8_1):: v4)
 deallocate(v4)
 allocate (x8(8_2):: v4)
 deallocate(v4)
 allocate (x8(8_4):: v4)
 deallocate(v4)
 allocate (x8(8_8):: v4)
 deallocate(v4)
 allocate (x8(8_1):: v8)
 deallocate(v8)
 allocate (x8(8_2):: v8)
 deallocate(v8)
 allocate (x8(8_4):: v8)
 deallocate(v8)
 allocate (x8(8_8):: v8)
 deallocate(v8)
end
call s1
 print *,'pass'
end
