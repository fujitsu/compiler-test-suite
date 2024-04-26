module m1
contains
subroutine s1(k1,k2,a)
real(8),pointer :: a(:,:)

forall (n=1:3)
  a(1:k1 , n )=a(1:k1, n )+dble(n)
end forall
end subroutine
end

use m1
integer,parameter:: k1=5,k2=3
real(8),pointer:: a(:,:)
allocate(a(k1,k2))
a=reshape([(n,n=1,20*3)],[5,3])
call s1(k1,k2,a)
if (any([a]/=[&
2.,3.,4.,5.,6.,8.,9.,10.,11.,12.,14.,15.,16.,17.,18.&
])) print *,101
print *,'pass'
end
