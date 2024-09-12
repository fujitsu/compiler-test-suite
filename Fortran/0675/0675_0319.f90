target :: a(10),b(10)
DATA a/1,2,3,4,54,6,7,8,9,10/
DO i=1,10
b(i)=LOG(a(i)) 
enddo
write(6,*) "b=",b
end
