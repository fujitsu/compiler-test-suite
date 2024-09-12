integer a(6),b(6),c(6),d(6),e(6),f(2,3),g(2,3)
a=(/1,2,3,4,5,6/)
b=(/6,5,4,3,2,1/)
c=(/1,(i,i=2,3),4,5,6/)
d=a(b)
e=a(c(a(b)))
f=reshape(b,(/2,3/))
g=reshape((/6,(i,i=5,4,-1),3,2,1/),(/2,3/))

k=7;n=0
do j=1,3
do i=1,2
  k=k-1;n=n+1
  if(d(n) /= k) print*,'ng1' 
  if(e(n) /= k) print*,'ng2' 
  if(f(i,j) /= k) print*,'ng3' 
  if(g(i,j) /= k) print*,'ng4' 
enddo;enddo
print*,'pass'
end
