real(kind = 4) :: a,arr(3:4,5:6)
complex(kind = 8) :: b,brr(2:5,2:4)
a = 2.0
arr = 2.4
b = (2,3)
brr = (2,1)
call sub(a,b,arr,brr)
contains 
subroutine sub(c,d,crr,drr)
real(kind=4) :: c(..),crr(..)
complex(kind=8) :: d(..),drr(..)
if(precision(c) .ne. 6)print*,"101",precision(c)
if(precision(d) .ne. 15)print*,"102",precision(d)
if(precision(crr) .ne. 6)print*,"103",precision(crr)
if(precision(drr) .ne. 15)print*,"104",precision(drr)
print*,"PASS"
end subroutine sub
end


