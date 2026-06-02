real ::a,arr(3,3:5)
a = 2.0
arr = 10.0
call sub(a,arr)
contains
subroutine sub(b,brr)
real :: b(..),brr(..)
real::x
if(tiny(b).ne.tiny(x))print*,"101"
if(tiny(brr).ne.tiny(x))print*,"101"
print*,"Pass"
end subroutine sub
end
