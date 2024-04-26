program main
complex*8, parameter::a(8) = (/(1.0_4,1.0_4) ,(2.0_4,2.0_4) ,(3.0_4,3.0_4),&
                  (4.0_4,4.0_4) ,(5.0_4,5.0_4),(6.0_4,6.0_4),(7.0_4,7.0_4),(8.0_4,8.0_4)/)
complex*8, parameter::b(0) = reshape(a, (/0/))

complex*8, parameter::c(12) = (/(1.0_4,1.0_4),(2.0_4,2.0_4),(3.0_4,3.0_4),(4.0_4,4.0_4),&
                      (5.0_4,5.0_4),(6.0_4,6.0_4),(7.0_4,7.0_4),(8.0_4,8.0_4),(9.0_4,9.0_4),&
                    (10.0_4,10.0_4),(11.0_4,11.0_4),(12.0_4,12.0_4) /)

complex*8, parameter::d(0) = reshape(c, (/0/))

complex*8::e = dot_product(b, d)
complex*8::f
integer::h = kind(dot_product(b,d))
f = dot_product(b,d)

print*,e
print*,f

print*, e, '--', f
if(e.ne.f) then
print*, '??? (Error:) ???'
else
print*, 'pass'
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
