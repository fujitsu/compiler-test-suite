character*65000 b
do i=1,65000
  if(i /= 65000 )then
    b(i:i)='x'
  else
    b(i:i)='y'
  endif
enddo
do i=1,65000
  if(i /= 65000 )then
    if( b(i:i) /= 'x')print*,'ng1'
  else
    if( b(i:i) /= 'y')print*,'ng2'
  endif
enddo
print*,'pass'
end
