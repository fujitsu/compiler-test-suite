Program Main

complex*8,dimension(2,3,2,1)::a
complex*8,parameter, dimension (2,3,2,1) :: b = reshape((/(0.0_4,0.0_4),(-30.0_4,-30.0_4),(-100.0_4,-100.0_4),&
                           (-50.0_4,-50.0_4),(4.0_4,4.0_4), (5.0_4,5.0_4),(8.0_4,8.0_4),&
                           (-11.0_4,-11.0_4),(6.0_4,6.0_4),(-3.0_4,-3.0_4),(2.0_4, 2.0_4),&
                           (-400.0_4, -400.0_4)/), (/2,3,2,1/))

logical,parameter,dimension(2,3,2,1)::m = reshape((/.true., .true.,.false.,.false.,.false.,&
                   .true.,.true.,.true.,.false.,.true.,.true.,.false./),(/2,3,2,1/))

complex*8,parameter,dimension(3,2,1) :: c = sum(b,dim =1, mask =  m)
complex*8,dimension(3,2,1) :: d
integer::p = kind(sum(b,dim =1, mask = m))
a = reshape((/(0.0_4,0.0_4),(-30.0_4,-30.0_4),(-100.0_4,-100.0_4),&
                           (-50.0_4,-50.0_4),(4.0_4,4.0_4), (5.0_4,5.0_4),(8.0_4,8.0_4),&
                           (-11.0_4,-11.0_4),(6.0_4,6.0_4),(-3.0_4,-3.0_4),(2.0_4, 2.0_4),&
                           (-400.0_4, -400.0_4)/), (/2,3,2,1/))
d =  sum(a,dim =1, mask = m)

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

call check(p, kind(sum(a,dim =1,mask = m)))

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
               
