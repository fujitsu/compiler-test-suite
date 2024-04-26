Program Main

real*16,dimension(2,3,2,1)::a

real*16,parameter, dimension (2,3,2,1) :: b = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16, &
                                   6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,1/))

logical*2,parameter::m = .true.

real*16,parameter,dimension(3,2,1) :: c = minval(b,dim =1, mask = m)

real*16,dimension(3,2,1) :: d

integer::p = kind(minval(b,dim =1, mask = m))

a = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16,6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,1/))

d =  minval(a,dim =1, mask = m)
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
call check(p, kind(minval(a,dim =1,mask = m)))


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
