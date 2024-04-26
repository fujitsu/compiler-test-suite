program main
complex*16, parameter::a(8) = (/(1.0_8,1.0_8) ,(2.0_8,2.0_8) ,(3.0_8,3.0_8),& 
                  (4.0_8 , 4.0_8) ,(5.0_8,5.0_8),(6.0_8,6.0_8),(7.0_8,7.0_8),(8.0_8,8.0_8)/) 
                              
complex*16, parameter::b(2, 0) = reshape(a, (/2,0/))
complex*16, parameter::c(12) = (/(1.0_8,1.0_8),(2.0_8,2.0_8),(3.0_8,3.0_8),(4.0_8,4.0_8),& 
                      (5.0_8,5.0_8),(6.0_8,6.0_8),(7.0_8,7.0_8),(8.0_8,8.0_8),(9.0_8,9.0_8),&
                    (10.0_8,10.0_8),(11.0_8,11.0_8),(12.0_8,12.0_8) /)

complex*16, parameter::d(0,4) = reshape(c, (/0,4/))
complex*16::e(2,4) = matmul(b, d)
complex*16::f(2,4)

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
if(e(i,j).ne.f(i,j)) then
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

