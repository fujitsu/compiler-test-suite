  subroutine s1
    type x
        integer,allocatable:: a(:)
    end type
    type (x),pointer:: p1,p2
    type (x),target:: t

allocate( t% a(3) )
t%a=[1,2,3]
p1=>t
p2=>t

do k=1,2
 p1%a(k+1)=p2%a(k)
end do
if (any(p1%a/=[1,1,1])) print *,101,p1%a
t%a=[1,2,3]
 p1%a(2:)=p2%a(:2)
if (any(p1%a/=[1,1,2])) print *,102,p1%a
end
call s1
print *,'pass'
end
