call s1
print *,'pass'
contains
subroutine s1
real(4)::a(5,5),b(5,5)
b=2
forall(i=1:5,j=1:5,b(i,j) /=0.0)
a(i,j)=b(i,j)**2
end forall
if(any(a/=reshape([(4.0,i=1,25)],[5,5]))) print *,'err'
end subroutine s1
end 
