program main
real*4, parameter::a(12) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                             5.0_4, 6.0_4, 7.0_4, 8.0_4, &
							 1.0_4, 2.0_4, 3.0_4, 4.0_4/)
logical, parameter::b(8) = (/.true., .false., .true. , .true., &
                             .true., .true. , .false., .true./)
logical, parameter::m(4 ,2) = reshape(b, (/4,2/))
real*4, parameter::c(8) = (/11.0_4, 12.0_4, 13.0_4, 14.0_4 , &
                            15.0_4, 16.0_4, 17.0_4, 18.0_4 /)
real*4, parameter::n(4, 2) = reshape(c, (/4,2/))
real*4::d(4,2) = unpack(a,m,n)
real*4::e(4,2)
integer::i,j
integer::z(2)
integer::g(2) = shape(unpack(a,m,n))
integer::h = kind(unpack(a,m,n))
e = unpack(a,m,n)
z = shape(unpack(a,m,n))

do i =1,4
do j =1,2
print*, d(i, j), '---', e(i, j)
if (d(i, j).ne.e(i, j)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo

call check(g,z)
call check1(h, kind(unpack(a,m,n)))
end

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i = 1,2
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
