module m1
 contains
  subroutine s1(p)
    integer,pointer,intent(in):: p(:)
     call s2(p)
if (any(p/=[-3,-2,-1])) print *,1201
  end
  subroutine s2(p)
    integer,pointer:: p(:)
     allocate(p(-3:-1),source=[-3,-2,-1])
   end
end
use m1
    integer,pointer:: p(:)
allocate( p(1:2),source=[1,2] )
call s1(p)
if (any(p/=[-3,-2,-1])) print *,201
if (size(p)/=3) print *,202
print *,'pass'
end
