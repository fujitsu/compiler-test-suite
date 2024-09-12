module m1
  contains
  subroutine s(p)
   procedure(),pointer,intent(in)::p
   call p(1)
  end subroutine
end
use m1
external sub
call s(sub)
rewind 1
read(1,*) n
if (n/=9) print *,201
print *,'pass'
end
  subroutine sub(k)
  write(1,*) 9
  end
