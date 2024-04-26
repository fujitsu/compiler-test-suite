program main
logical*4, parameter::a(8) = (/.true., .true. , .false., .false. , &
                               .true., .false., .true. , .false. /)
logical*4, parameter::b(2, 4) = reshape(a, (/2,4/))
logical*4, parameter::c(12) = (/.true., .true. , .false., .false. , &
                               .true., .false., .true. , .false.,&
                               .true.,.false.,.true.,.false. /)

logical*4, parameter::d(4, 0) = reshape(c, (/4,0/))
logical*8::e(2,0) = matmul(b, d)
logical*8::f(2,0)
integer :: s(2) = shape(matmul(b, d))
integer :: sh(2)
integer::i
integer::h = kind(matmul(b,d))
f = matmul(b ,d)
sh = shape(matmul(b ,d))
print*,e
print*,f
do i=1,2
if ( s(i)/= sh(i)) then
  print *, "Error"
else
  print *, "OK"
endif
enddo

call check1(h, kind(matmul(b,d)))
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

