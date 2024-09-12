subroutine s1

 type x1
   character(0):: x1e
 end type
 type x2
   integer     :: x2e(1:0)
 end type

 type x3
   character(0):: x3e
   integer     :: x31
 end type
 type x4
   integer     :: x4e(1:0)
   integer     :: x41
 end type

type (x1) :: a1(3)
type (x2) :: a2(3)
type (x3) :: a3(3)
type (x4) :: a4(3)

if (is_contiguous( a1(1:3:2) ) ) print *,101
if (is_contiguous( a2(1:3:2) ) ) print *,102
if (is_contiguous( a3(1:3:2) ) ) print *,103
if (is_contiguous( a4(1:3:2) ) ) print *,104
end
call s1
print *,'pass'
end

