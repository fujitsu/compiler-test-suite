subroutine sub(a)
real a(:,:),b(2,3)
if(lbound(a,1) /= 1)print*,'ng'
if(ubound(a,1) /= 1)print*,'ng'
if(lbound(a,2) /= 2)print*,'ng'
if(ubound(a,2) /= 3)print*,'ng'
do i=lbound(a,1),ubound(a,1)
do j=lbound(a,2),ubound(a,2)
  b(i,j)=a(i,j)
enddo;enddo
k=0
do i=lbound(b,1),ubound(b,1)
do j=lbound(b,2),ubound(b,2)
  k=k+1
  if(b(i,j) /= k)print*,'ng'
enddo;enddo
end subroutine

interface 
  subroutine sub(a)
  real a(:,:)
  end subroutine
end interface

real a1(-10:-9,100:102)
k=0
do i=-10,-9
do j=100,102
  k=k+1
  a1(i,j)=k
enddo;enddo
print*,'pass'
end
