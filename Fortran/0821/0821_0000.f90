module m1
 contains
  subroutine s(d)
    integer(2),value::d
if (d/=1) print *,101
  end  subroutine
end
use m1
integer(2)::k
k=1
call s(      k )
call s( %val(k))
print *,'pass'
end
