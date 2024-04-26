program main
integer::i=2,j=8,k=2,x
real :: arr(10)=0
do x=2,8,2
 arr(x)=3.5
end do

call sub(i,j,k)

contains
subroutine sub(d1,d2,d3)
 integer::d1,d2,d3
 associate(a=>arr(d1:d2:d3))
  if(any(a/=0)) then
   print*,'pass with size & shape=4 => ''size:',size(a),'shape:',shape(a)
  end if
 end associate
end subroutine
end
