subroutine s1(k1,k2)
character(4),pointer:: p1
character(4),pointer:: p2
character(k1),pointer:: p3
character(k2),pointer:: p4
allocate( p2 )
allocate( p1, mold=p2 )

allocate( p4 )
allocate( p3, mold=p4 )
p4='ab'
allocate( p3, source=p4,stat=kk )
if (kk/=0) print *,101
end
call s1( 4, 4)
print *,'pass'
end
