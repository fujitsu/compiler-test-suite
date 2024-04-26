program main
real*8, parameter::b(8) = (/1.0_8, 2.0_8, 3.0_8, 4.0_8, &
                            5.0_8, 6.0_8, 7.0_8, 8.0_8/)
real*8, parameter::r(4,2) = reshape(b, (/4,2/))
real*8, parameter::c(8) = (/ 5.0_8, 6.0_8, 7.0_8, 8.0_8, &
							 1.0_8, 2.0_8, 3.0_8, 4.0_8  /)
logical, parameter::e = .true.
real*8::d(8) = pack(r, e , c)
real*8::f(8)
integer::i
integer::g(1) = shape(pack(r, e , c))
integer::p = kind(pack(r,e,c))
f = pack(r, e, c)
do i =1,8
print*, d(i), '---', f(i)
if (d(i).ne.f(i)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo

call check(g, shape(pack(r,e,c)))
call check1(p, kind(pack(r,e,c)))
end

subroutine check(x, y)
integer x(1), y(1)
print*, x,'--',y
if (x(1).ne.y(1)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
end subroutine

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine