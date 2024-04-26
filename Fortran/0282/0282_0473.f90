Program Main

complex*16,dimension(2,3,2,1)::a
complex*16,parameter, dimension (2,3,2,1) :: b = reshape((/(0.0_8,0.0_8),(-30.0_8,-30.0_8),(-100.0_8,-100.0_8),&
                           (-50.0_8,-50.0_8),(4.0_8,4.0_8), (5.0_8,5.0_8),(8.0_8,8.0_8),&
                           (-11.0_8,-11.0_8),(6.0_8,6.0_8),(-3.0_8,-3.0_8),(2.0_8, 2.0_8),&
                           (-400.0_8, -400.0_8)/), (/2,3,2,1/))

logical,parameter,dimension(2,3,2,1)::m = reshape((/.true., .true.,.false.,.false.,.false.,&
                   .true.,.true.,.true.,.false.,.true.,.true.,.false./),(/2,3,2,1/))


complex*16,parameter,dimension(3,2,1) :: c = sum(b,dim =1, mask = m)
complex*16,dimension(3,2,1) :: d
integer::p = kind(sum(b,dim =1, mask = m))
a = reshape((/(0.0_8,0.0_8),(-30.0_8,-30.0_8),(-100.0_8,-100.0_8),&
                           (-50.0_8,-50.0_8),(4.0_8,4.0_8), (5.0_8,5.0_8),(8.0_8,8.0_8),&
                           (-11.0_8,-11.0_8),(6.0_8,6.0_8),(-3.0_8,-3.0_8),(2.0_8, 2.0_8),&
                           (-400.0_8, -400.0_8)/), (/2,3,2,1/))

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
               
