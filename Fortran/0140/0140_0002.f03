call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer(8)::i1(10000),i,j
i1=[(j,j=1_8,10000_8)]
forall(i=1_8:10000_8) i1(i1) = i1(1_8:10000_8)**1_8
if(sum(i1)/=50005000) print *,'err'
end
subroutine s2
integer(8)::i1(10000),i,k,m,j
i1=[(j,j=1_8,10000_8)]
m=1_8
k=10000_8
forall(i=m:k) i1(i1) = i1(m:k)**m
if(sum(i1)/=50005000) print *,'err'
end
subroutine s3
integer::i1(10000)
i1=[(j,j=1,10000)]
forall(i=1:10000) i1(i1) = i1(1:10000)**1
if(sum(i1)/=50005000) print *,'err'
end
subroutine s4
integer::i1(10000)
i1=[(j,j=1,10000)]
k=10000
forall(i=1:k) i1(i1) = i1(1:k)**1
if(sum(i1)/=50005000) print *,'err'
end
