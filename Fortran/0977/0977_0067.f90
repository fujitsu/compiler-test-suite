parameter(k=100)
integer::a(k),b(k),c(k)
b=2
c=3
call s(k,1,a,b,c)
print *,'pass'
contains
subroutine s(k,i,a,b,c)
integer,value::i
integer::a(k),b(k),c(k)
do j=1,k,i
  a(j)=b(j)+c(j)
end do
end subroutine
end
 
