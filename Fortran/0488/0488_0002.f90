module m1
   interface 
     subroutine yy(k)
     end subroutine
    end interface
 contains
 subroutine xxx(d)
   procedure(yy),pointer:: d
   call d(101)
  end subroutine
end
subroutine s1
use m1
procedure(yy),pointer:: x
x=> In
call xxx(x)
call sub(In)
contains
  subroutine In(k)
  end subroutine
end
subroutine sub(proc)
external:: proc
call proc(102)
end
call s1
print *,'pass'
end
