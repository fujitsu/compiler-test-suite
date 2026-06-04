integer :: a,arr(3:5,4:6)
real(kind = 8) :: b,brr(2:3,3:4)
complex(kind = 16) :: c,crr(2:4,5)
a = 2
arr = 3
b = 1.0
brr = 2.0
c = (2,1)
crr = (1,1)
call sub(a,b,c,arr,brr,crr)
contains 
subroutine sub(d,e,f,drr,err,frr)
integer :: d,drr(..)
real(kind = 8) :: e,err(..)
complex(kind = 16) :: f,frr(..)
if(range(d) /= 9)print*,101
if(range(drr) /= 9)print*,102
if(range(e) /= 307)print*,103
if(range(err) /= 307)print*,104
if(range(f) /= 4931)print*,105
if(range(frr) /= 4931)print*,106
print*,'PASS'
end subroutine sub
end
