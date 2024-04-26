module mod1
 interface sub
  subroutine sub00(k)
  end subroutine
 end interface
 interface fun
  function   fun00()
  end function  
 end interface
end
module mod2
 integer:: aa=2,bb
end
module mod3
 use mod2,only:aa
 use mod1,only:sub
end
module mod4
 use mod2,only:aa
 use mod1,only:sub
end
module mod5
 use mod3,only:aa
 interface sub
  subroutine sub11(k)
  end subroutine
 end interface
contains
subroutine s1(kk)
 call sub(kk)
if (aa/=2) print *,101
end subroutine
end
use mod5,only: s1
call s1(3)
print *,'pass'
end

  subroutine sub11(k)
    if (k/=3) print *,101
  end subroutine
