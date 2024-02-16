integer*8 i,a(10)
forall(i=1_8:10_8)
  a(i)=1
end forall
do i=1_8,10_8
  if(a(i).ne.1)print*,'ng'
end do
print*,'pass'
end

subroutine sub
integer*8 i,a(10)
integer*8,parameter:: n=z'800000000'
forall(i=1_8:n)
  a(i)=1
end forall
print*,a
end
