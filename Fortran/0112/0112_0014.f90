integer i,a(10),n
n=10
forall(i=1:n)
  a(i)=1
end forall
do i=1,n
  if(a(i).ne.1)print*,'ng'
end do
print*,'pass'
end
