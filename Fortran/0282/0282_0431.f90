Program Main

real*4,dimension(2,3,2,1)::a
real*4,parameter, dimension (2,3,2,1) :: b = reshape((/0.0_4,-30.0_4,-100.0_4,-50.0_4,4.0_4,5.0_4,8.0_4,-11.0_4, &
                                   6.0_4,-3.0_4,2.0_4,-400.0_4/), (/2,3,2,1/))

real*4,parameter,dimension(3,2,1) :: c = product(b,dim =1, mask = b> -30)
real*4,dimension(3,2,1) :: d
integer::p = kind(product(b,dim =1, mask = b> -30))
a = reshape((/0.0_4,-30.0_4,-100.0_4,-50.0_4,4.0_4,5.0_4,8.0_4,-11.0_4,6.0_4,-3.0_4,2.0_4,-400.0_4/), (/2,3,2,1/))
d =  product(a,dim =1, mask = a>-30)

do i = 1,3
do j = 1,2
do k = 1,1
print*, c(i,j,k), '---', d(i,j,k)

if (c(i,j,k).ne.d(i,j,k)) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
enddo
enddo
enddo

call check(p, kind(product(a,dim =1,mask = a>-30)))

end

subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
