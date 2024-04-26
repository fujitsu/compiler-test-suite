program main
complex*32, parameter::a(8) = (/(1.0_16 , 21.0_16), (2.0_16 , 20.0_16), (3.0_16 , 19.0_16), (4.0_16 , 18.0_16), &
                                (5.0_16 , 17.0_16), (6.0_16 , 16.0_16), (7.0_16 , 15.0_16), (8.0_16 , 14.0_16)/)
logical, parameter::b(8) = (/.true., .false., .true., .true., &
                             .true., .true., .false., .true./)
logical, parameter::m(4 ,2) = reshape(b, (/4,2/))
complex*32, parameter::c(8) = (/(11.0_16 , 31.0_16), (12.0_16 , 32.0_16), (13.0_16 , 33.0_16), (14.0_16 , 34.0_16), &
                                (15.0_16 , 35.0_16), (16.0_16 , 36.0_16), (17.0_16 , 37.0_16), (18.0_16 , 38.0_16)/)
complex*32, parameter::n(4, 2) = reshape(c, (/4,2/))
complex*32::d(4 , 2) = unpack(a,m,n)
complex*32::e(4 , 2)
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
