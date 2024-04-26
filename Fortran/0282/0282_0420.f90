Program Main

integer*2,dimension(2,3,2,1)::a
integer*2,parameter, dimension (2,3,2,1) :: b = reshape((/0_2,-30_2,-100_2,-50_2,4_2,5_2,8_2,-11_2, &
                                   6_2,-3_2,2_2,-400_2/), (/2,3,2,1/))

integer*2 :: d
integer*2,parameter :: c = product(b, mask = b> -30)
integer::p = kind(product(b,mask = b> -30))

a = reshape((/0_2,-30_2,-100_2,-50_2,4_2,5_2,8_2,-11_2,6_2,-3_2,2_2,-400_2/), (/2,3,2,1/))

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
