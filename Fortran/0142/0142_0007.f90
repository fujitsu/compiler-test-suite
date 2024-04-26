subroutine s1(k1,k2,a)
real(8) :: a(k1,k2)

forall (n=1:3)
  a(1:k1 , n )=a(1:k1, n )+dble(n)
end forall

end

integer,parameter:: k1=5,k2=3
real(8):: a(k1,k2)
a=reshape([(n,n=1,20*3)],[5,3])
call s1(k1,k2,a)
if (any([a]/=[&
2.,3.,4.,5.,6.,8.,9.,10.,11.,12.,14.,15.,16.,17.,18.&
])) print *,101
print *,'pass'
end
