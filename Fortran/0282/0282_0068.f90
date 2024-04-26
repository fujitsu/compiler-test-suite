program main
real*4, parameter::a(96) = (/21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
                             21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
                             21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4, &
							 21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4	 /)
real*4, parameter::b(2,4,4,3) = reshape(a, (/2,4,4,3/))
integer*4, parameter::d = 3_4
real*4::f(2,4,4,3) = cshift(b,d)
real*4::g(2,4,4,3)
integer::i,j,k,l

integer::z(4)
integer::m(4) = shape(cshift(b,d))
integer::n = kind(cshift(b,d))
g = cshift(b ,d)

z = shape(cshift(b,d))
do i =1,2
do j =1,4
do k =1,4
do l =1,3
print*, f(i,j,k,l), '--', g(i,j,k,l)
if(f(i,j,k,l).ne.g(i,j,k,l)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo
enddo
enddo

call check(m,z)
call check1(n, kind(cshift(b,d)))

end

subroutine check(x, y)
integer x(4), y(4)
integer::i
print*, x,'--',y
do i=1,4
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
