module m1
  complex:: c=(1,2)
  contains
  subroutine s1
   c=c+1
   c%im=c%im+1
   call ss1
   contains
    subroutine ss1
      c=c+1
      c%im=c%im+1
      call ss2
    end subroutine
    subroutine ss2
      c=c+1
      c%im=c%im+1
    end subroutine
  end subroutine
end
subroutine t1
use m1
   c=c+1
   c%im=c%im+1
   call s1
   call ss1
   contains
    subroutine ss1
      c=c+1
      c%im=c%im+1
      call ss2
    end subroutine
    subroutine ss2
      c=c+1
      c%im=c%im+1
    end subroutine
end
use m1
call t1
if (abs(c-(7,8)) > 0.001) print *,101,c
print *,'pass'
end
