program main
real*4, parameter::a(24) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                             5.0_4, 6.0_4, 7.0_4, 8.0_4, &
							 1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                             1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                             5.0_4, 6.0_4, 7.0_4, 8.0_4, &
							 1.0_4, 2.0_4, 3.0_4, 4.0_4/)
real*4, parameter::b(3,4,2) = reshape(a, (/3,4,2/))
integer*4, parameter::d = 3_4
real*4, parameter::e(6) = (/3.0_4, 3.0_4, 4.0_4, 4.0_4, 5.0_4, 6.0_4/)
real*4, parameter::f(3,2) = reshape(e, (/3,2/))
integer*4, parameter::g = 2
real*4::h(3,4,2) = eoshift(b,d,f,g)
real*4::m(3,4,2)
integer::i,j,k

integer::z(3)
integer::n(3) = shape(eoshift(b,d,f,g))
integer::o = kind(eoshift(b,d,f,g))
m = eoshift(b,d,f,g)
z = shape(eoshift(b,d,f,g))

do i=1,3
do j=1,4
do k=1,2
print*, h(i,j,k), '--', m(i,j,k)
if(h(i,j,k).ne.m(i,j,k)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo
enddo

call check(n,z)
call check1(o, kind(eoshift(b,d,f,g)))

end

subroutine check(x, y)
integer x(3), y(3)
integer::i
print*, x,'--',y
do i=1,3
if (x(i).ne.y(i)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
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
