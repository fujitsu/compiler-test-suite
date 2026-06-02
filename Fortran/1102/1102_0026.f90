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
       character function hoge()
       end function hoge
    end interface
    if (a()/='1')print *,2001
    if (hoge()/='1')print *,2002
  end 
  module subroutine sub(a)
    interface
       character function hoge()
       end function hoge
    end interface
    procedure(hoge)::a
    if (a()/='1')print *,1001
    if (hoge()/='1')print *,1002
  end subroutine
end

use m
    interface
       character function hoge()
       end function 
    end interface
call sub(hoge)
call subx(hoge)
print *,'sngg194o : pass'
end
       character function hoge()
hoge='1'
       end function 
