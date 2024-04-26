 program main
logical*4, parameter::a(192) = (/ .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true./)
logical*4, parameter::b(3,2,2,2,2,2,2) = reshape(a, (/3,2,2,2,2,2,2/))
integer, parameter::z = 2
logical*4::c(3,2,2,2,2,2) = all(b,z)
logical*4::d(3,2,2,2,2,2)

integer::p(6)
integer::e(6) = shape(all(b,z))
integer::f = kind(all(b,z))
integer::i,j,k,l,m,n
d = all(b,z)
p = shape(all(b,z))

do i=1,3
do j=1,2
do k=1,2
do l=1,2
do m=1,2
do n=1,2
print*, c(i,j,k,l,m,n), '--', d(i,j,k,l,m,n)
if(c(i,j,k,l,m,n).neqv.d(i,j,k,l,m,n)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif
enddo
enddo
enddo
enddo
enddo
enddo

call check(e,p)
call check1(f, kind(all(b,z)))

end

subroutine check(x, y)
integer x(6), y(6)
integer::i
print*, x,'--',y
do i=1,6
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
