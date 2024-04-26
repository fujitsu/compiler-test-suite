

Program Main

real,dimension(2,3,2,1)::a
real,parameter, dimension (2,3,2,1) :: b = reshape((/0.0,-30.0,-100.0,-50.0,4.0,5.0,8.0,-11.0, &
                                   6.0,-3.0,2.0,-400.0/), (/2,3,2,1/))

real,dimension(3,2,1)::d
real,parameter,dimension(3,2,1) :: c = minval(b,dim =1, mask = b> -30.0)

integer::p = kind(minval(b,dim =1, mask = b> -30.0))

a = reshape((/0.0,-30.0,-100.0,-50.0,4.0,5.0,8.0,-11.0,6.0,-3.0,2.0,-400.0/), (/2,3,2,1/))

d = minval(a,dim =1, mask = a> -30.0) 





do i = 1,3
do j = 1,2
do k = 1,1

print*, c(i,j,k), '---', d(i,j,k)

if (c(i,j,k).ne.d(i,j,k)) then

print*, '??? (Error: R->R) ???'

else

print*, 'R -> R'


endif

end do

end do

end do



call check(p, kind(minval(a,dim =1, mask = a> -30.0)))

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
