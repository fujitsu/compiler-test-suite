subroutine s1(k1,k2,a)
integer :: a(k1,k2)

forall (n=1:3)
  a(1:k1 , n )=a(1:k1, n )+dble(n)
end forall

end

integer,parameter:: k1=500,k2=3
integer:: a(k1,k2)
a=reshape([(n,n=1,k1*3)],[k1,3])
call s1(k1,k2,a)
if (any(a(1:500,1)/=[ (k,k=1,500)]+1 )) print *,101
if (any(a(1:500,2)/=[ (k,k=501,1000)]+2 )) print *,102
if (any(a(1:500,3)/=[ (k,k=1001,1500)]+3 )) print *,103
print *,'pass'
end
