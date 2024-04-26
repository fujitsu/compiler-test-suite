program main
logical*1, parameter::a(8) = (/.true._1, .true._1 , .false._1, .false._1 , &
                               .true._1, .false._1, .true._1 , .false._1 /)
logical*1, parameter::b(2, 0) = reshape(a, (/2,0/))
logical*1, parameter::c(12) = (/.true._1, .true._1 , .false._1, .false._1 , &
                               .true._1, .false._1, .true._1 , .false._1,&
                               .true._1,.false._1,.true._1,.false._1 /)

logical*1, parameter::d(0,4) = reshape(c, (/0,4/))
logical*1::e(2,4) = matmul(b, d)
logical*1::f(2,4)
integer::i,j
integer::n(2)
integer::g(2) = shape(matmul(b,d))
integer::h = kind(matmul(b,d))
f = matmul(b ,d)
n = shape(matmul(b,d))
print*,e
print*,f
do i =1,2
do j =1,4
print*, e(i,j), '--', f(i,j)
if(e(i,j).neqv.f(i,j)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo

call check(g, n)
call check1(h, kind(matmul(b,d)))

end

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i=1,2
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

