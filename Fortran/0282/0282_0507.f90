Program Main

integer*8,dimension(2,3,2,1)::a
integer*8,parameter, dimension (2,3,2,1) :: b = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8, &
                                   6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))

integer*8 :: d
integer*8,parameter :: c = sum(b, mask = b> -30)
integer::p = kind(sum(b,mask = b> -30))

a = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8,6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))

d =  sum(a,mask = a> -30)

print*, c , '---', d
if (c  .ne. d  ) then
print*, '??? (Error:) ???'
else
print*, 'PASS'
endif

call check(p, kind(sum(a,mask = a> -30)))

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
