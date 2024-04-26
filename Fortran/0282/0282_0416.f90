Program Main

integer*1,dimension(2,3,2,1)::a
integer*1,parameter, dimension (2,3,2,1) :: b = reshape((/0_1,-30_1,-100_1,-50_1,4_1,5_1,8_1,-11_1, &
                                   6_1,-3_1,2_1,-40_1/), (/2,3,2,1/))

integer*1 :: d
integer*1,parameter :: c = product(b, mask = b> -30)
integer::p = kind(product(b,mask = b> -30))

a = reshape((/0_1,-30_1,-100_1,-50_1,4_1,5_1,8_1,-11_1,6_1,-3_1,2_1,-40_1/), (/2,3,2,1/))

d =  product(a,mask = a> -30)

print*, c , '---', d
if (c  .ne. d  ) then
print*, '??? (Error:) ???'
else
print*, 'PASS'
endif

call check(p, kind(product(a,mask = a> -30)))

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
