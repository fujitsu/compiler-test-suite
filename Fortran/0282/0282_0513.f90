Program Main

real,dimension(2,3,2,1,1,1)::a

real,parameter, dimension (2,3,2,1,1,1) :: b = reshape((/0.0,-30.0,-100.0,-50.0,4.0,5.0,8.0,-11.0, &
                                   6.0,-3.0,2.0,-400.0/), (/2,3,2,1,1,1/))

real,dimension(2,2,1,1,1) :: d

real,parameter,dimension(2,2,1,1,1) :: c = sum(b,dim = 2, mask = b> -30.0)

integer::p = kind(sum(b,dim =1, mask = b> -30.0))

a = reshape((/0.0,-30.0,-100.0,-50.0,4.0,5.0,8.0,-11.0,6.0,-3.0,2.0,-400.0/), (/2,3,2,1,1,1/))

d =  sum(a,dim =2, mask = a> -30.0)





do i = 1,2
do j = 1,2
do k = 1,1
do l = 1,1
do m = 1,1


print*, c(i,j,k,l,m), '---', d(i,j,k,l,m)

if (c(i,j,k,l,m).ne.d(i,j,k,l,m)) then

print*, '??? (Error: R->R) ???'

else

print*, 'R -> R'


endif

end do

end do

end do

end do



end do


call check(p, kind(sum(a,dim =1, mask = a> -30.0)))

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
