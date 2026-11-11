module m0
interface
  pure function f(r)
  intent(in)::r
  end function
end interface
procedure(f),pointer ::p=>f
end

pure subroutine sub(a)
use m0
intent(out)::a
a=p(1.0)
end

call sub(a)
if (a/=-1.0) print *,9001
print *,'pass'
end
  pure function f(r)
  intent(in)::r
  f=r
  if (kind(f)/=8) f=-1
  end function
