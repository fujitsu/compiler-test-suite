module m
  interface
     module subroutine sub(a)
       interface
          character function ext()
          end function ext
       end interface
       procedure(ext)::a
     end subroutine sub
     module subroutine subx(a)
       interface
          character function ext()
          end function ext
       end interface
       procedure(ext)::a
     end subroutine 
  end interface
end
submodule (m) smod
contains
  module procedure  subx
    interface
       character function ext()
       end function ext
    end interface
    if (a()/='1')print *,2001
    if (ext()/='1')print *,2002
  end 
  module subroutine sub(a)
    interface
       character function ext()
       end function ext
    end interface
    procedure(ext)::a
    if (a()/='1')print *,1001
    if (ext()/='1')print *,1002
  end subroutine
end

use m
    interface
       character function ext()
       end function 
    end interface
call sub(ext)
call subx(ext)
print *,'sngg195o : pass'
end
       character function ext()
ext='1'
       end function 
