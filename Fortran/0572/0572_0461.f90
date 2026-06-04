integer(kind=4) :: a,arr(3:4,5:6)
real(kind = 8) :: b,brr(2,5)
a=5
arr = 16
b = 2.0
brr = 125
call sub(a,arr,b,brr)
contains
subroutine sub(c,crr,d,drr)
integer :: c(..),crr(..)
real(kind = 8) :: d(..),drr(..)
if(radix(c).ne.2)print*,"101"
if(radix(crr).ne.2)print*,"102"
if(radix(d).ne.2)print*,"103"
if(radix(drr).ne.2)print*,"104"
print*,"Pass"
end subroutine sub
end
