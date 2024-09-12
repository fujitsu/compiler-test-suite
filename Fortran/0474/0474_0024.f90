  subroutine s1
    type x
        integer,allocatable:: p(:)
    end type
    type (x),pointer:: p1,p2
    type (x),target:: t

allocate( t% p(3) )
t%p=[1,2,3]
p1=>t
p2=>t

do k=1,2
 p1%p(k+1)=p2%p(k)
end do
if (any(p1%p/=[1,1,1])) print *,101,p1%p
t%p=[1,2,3]
 p1%p(2:)=p2%p(:2)
if (any(p1%p/=[1,1,2])) print *,102,p1%p
end
call s1
print *,'pass'
end
