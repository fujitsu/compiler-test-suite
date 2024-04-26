Program Main

integer*1,dimension(2,3,2,1)::a
integer*1,parameter, dimension (2,3,2,1) :: b = reshape((/0_1,-30_1,-100_1,-50_1,4_1,5_1,8_1,-11_1, &
                                   6_1,-3_1,2_1,-40_1/), (/2,3,2,1/))

integer*1,parameter,dimension(3,2,1) :: c = sum(b,dim =1, mask = b> -30)
integer*1,dimension(3,2,1) :: d
integer::p = kind(sum(b,dim =1, mask = b> -30))
a = reshape((/0_1,-30_1,-100_1,-50_1,4_1,5_1,8_1,-11_1,6_1,-3_1,2_1,-40_1/), (/2,3,2,1/))
d =  sum(a,dim =1, mask = a>-30)

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

call check(p, kind(sum(a,dim =1,mask = a>-30)))

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
