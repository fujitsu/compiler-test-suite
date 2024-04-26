program main
logical*4, parameter::a(24) = (/ .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true., &
                                 .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true. /)
logical*4, parameter::b(3,4,2) = reshape(a, (/3,4,2/))
integer*4, parameter::c(6) = (/1_4, 2_4, 3_4, 4_4, 5_4, 6_4/)
integer*4, parameter::d(3,2) = reshape(c, (/3,2/))
logical*4, parameter::e(6) = (/.true., .false.,.true.,.false.,.true.,.false./)
logical*4, parameter::f(3,2) = reshape(e, (/3,2/))
integer*4, parameter::g = 2
logical*4::h(3,4,2) = eoshift(b,d,f,g)
logical*4::m(3,4,2)
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
if(h(i,j,k).neqv.m(i,j,k)) then
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
