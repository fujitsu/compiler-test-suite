integer a(10),b(10),c(10)
data b/10*3/,c/10*5/
forall(i=1:10,b(i)>1)
  a(i)=c(i)+1
end forall

do i=1,10
  if(a(i).ne.6)print*,'ng'
enddo
print*,'pass'

end
