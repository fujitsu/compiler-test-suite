integer a(10),b(10)
b=1
forall (i=sum((/1/)):sum(b):sum((/1,1/)))
  a(i)=i
end forall 

do i=1,10,2
 if(a(i).ne.i)print*,'ng',i
enddo
print*,'pass'
end
