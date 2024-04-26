Program Main

integer*8,dimension(2,3,2,1)::a
integer*8,parameter, dimension (2,3,2,1) :: b = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8, &
                                   6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))

integer*8,parameter,dimension(3,2,1) :: c = product(b,dim =1, mask = b> -30)
integer*8,dimension(3,2,1) :: d
integer::p = kind(product(b,dim =1, mask = b> -30))
a = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8,6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))
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
