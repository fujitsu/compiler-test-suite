subroutine sub(a,b)
integer a(10,10),b(10,10)
m1=1;m2=2;m3=3;m5=5
do j=1,10
  b(j,1)=a(m1,j)
  b(j,7)=a(5,j)
  b(j,3)=a(2,j)
  b(j,4)=a(m2,j)
  b(j,5)=a(j,3)
  b(j,6)=a(j,m3)
  b(j,2)=a(1,j)
  b(j,8)=a(m5,j)
enddo
end subroutine

program main
integer a(10,10),b(10,10)
integer c(10)
do i=1,10
do j=1,10
 a(i,j)=i+10*j
enddo;enddo
call sub(a,b)
c=b(:,1); print*,c
c=b(:,2); print*,c
c=b(:,3); print*,c
c=b(:,4); print*,c
c=b(:,5); print*,c
c=b(:,6); print*,c
c=b(:,7); print*,c
c=b(:,8); print*,c
end
