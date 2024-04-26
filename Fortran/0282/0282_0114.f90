program main
real*16, parameter::a(8) = (/1.0_16,2.0_16,3.0_16,4.0_16,5.0_16,6.0_16,7.0_16,8.0_16 /)
real*16, parameter::b(0) = reshape(a, (/0/))

real*16, parameter::c(12) = (/1.0_16,2.0_16,3.0_16,4.0_16,5.0_16,6.0_16,7.0_16,8.0_16,&
                 9.0_16,10.0_16,11.0_16,12.0_16 /)

real*16, parameter::d(0) = reshape(c, (/0/))

real*16::e = dot_product(b, d)
real*16::f

integer::h = kind(dot_product(b,d))
f = dot_product(b,d)

print*,e
print*,f

print*, e, '--', f
if(e.ne.f) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif

call check1(h, kind(dot_product(b,d)))
end


subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
