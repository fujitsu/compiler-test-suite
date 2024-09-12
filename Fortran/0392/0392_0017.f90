integer,parameter::n=10
integer a(n,n)
a=0
do concurrent( k=1:n)
 do i=1,n
   a(i,k)=1
  end do
end do
if (any(a/=1)) print *,1
print *,'pass'
end
