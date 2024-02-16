integer i,a(10),n
n=10
forall(i=1:n:2)
  a(i)=1
end forall
do i=1,n,2
  if(a(i).ne.1)print*,'ng'
enddo
print*,'pass'
end
