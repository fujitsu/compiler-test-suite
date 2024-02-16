integer a(5,5)
a=0
forall(i=1:5,j=1:5, i>1 .and. j<5 )
  a(i,j)=1
end forall

do i=1,5
do j=1,5
  if(i>1 .and. j<5)then
    if( a(i,j).ne. 1) print*,'ng'
  else
    if( a(i,j).ne. 0) print*,'ng'
  endif
enddo
enddo
print*,'pass'
end

