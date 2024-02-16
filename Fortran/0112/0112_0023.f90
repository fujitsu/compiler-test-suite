subroutine sub1
integer a(10,10)
forall(i=sum((/1,1,-1/)):sum((/1,10,-1/)):sum((/1,1,-1/)), &
       j=sum((/1,1,-1/)):sum((/1,10,-1/)):sum((/1,1,-1/)) )
  a(i,j)=i+j
end forall
do i=1,10
do j=1,10
  if(a(i,j).ne.i+j)print*,'ng'
enddo;enddo
end subroutine

call sub1
print*,'pass'
end
