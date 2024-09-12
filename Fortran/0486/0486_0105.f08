subroutine s1
interface 
 subroutine sub(k)
 end
end interface
type x
  integer  :: x
  procedure(sub),nopass,pointer:: p=>sub
end type
type(x):: v
  procedure(sub),pointer:: p=>sub
if (.not.associated(v%p,sub)) print *,201
if (.not.associated(p,sub)) print *,202
n=0
call v%p(n)
if (n/=1) print *,301
call p(n)
if (n/=2) print *,302
end
call s1
print *,'pass'
end
subroutine sub(k)
k=k+1
end
