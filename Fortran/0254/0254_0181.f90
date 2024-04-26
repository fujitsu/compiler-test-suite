module m1
contains
subroutine sub04(k1)
integer(4):: k1(:)
 if (any(k1/=2)) print *,1021,k1
 if (size(k1)/=2) print *,1003
end subroutine
end

 subroutine s1
 use m1
 integer,target:: a(4,2)=reshape([1,2,3,4,5,6,6,5],[4,2])
 logical:: m(4,2)=.true.
 logical::t=.true.,f=.false.
 intrinsic findloc
 call sub04(findloc( a , 6 , m ,     4,     .not.t))
 call sub04(findloc( a , 6 , m ,     4,          f))
 call sub04(findloc( a , 6 , m ,     4            ))
 end
 call s1
 print *,'pass'
 end
