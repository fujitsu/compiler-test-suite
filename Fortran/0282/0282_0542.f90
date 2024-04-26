program main
complex*16, parameter::a(8) = (/(1.0_8 , 21.0_8), (2.0_8 , 20.0_8), (3.0_8 , 19.0_8), (4.0_8 , 18.0_8), &
                                (5.0_8 , 17.0_8), (6.0_8 , 16.0_8), (7.0_8 , 15.0_8), (8.0_8 , 14.0_8)/)
logical, parameter::b(8) = (/.true., .false., .true., .true., &
                             .true., .true., .false., .true./)
logical, parameter::m(4 ,2) = reshape(b, (/4,2/))
complex*16, parameter::c(8) = (/(11.0_8 , 31.0_8), (12.0_8 , 32.0_8), (13.0_8 , 33.0_8), (14.0_8 , 34.0_8), &
                                (15.0_8 , 35.0_8), (16.0_8 , 36.0_8), (17.0_8 , 37.0_8), (18.0_8 , 38.0_8)/)
complex*16, parameter::n(4, 2) = reshape(c, (/4,2/))
complex*16::d(4 , 2) = unpack(a,m,n)
complex*16::e(4 , 2)
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
print*, '??? (Error: C->C) ???'
else
print*, 'C -> C'
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
