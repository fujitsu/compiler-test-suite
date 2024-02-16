subroutine sub2
integer a(10,10)
forall(i=1:sum((/1,(k,k=2,3),4/)), &
       j=1:sum((/1,(k,k=2,3),4/)) )
  a(i,j)=i+j
end forall
do i=1,10
do j=1,10
  if(a(i,j).ne.i+j)print*,'ng'
enddo;enddo
end subroutine

call sub2
print*,'pass'
end
