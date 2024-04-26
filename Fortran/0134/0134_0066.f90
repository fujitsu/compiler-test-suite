module mod
contains
subroutine s(proc) bind(c)
interface 
  subroutine proc() bind(c)
  end subroutine
end interface
call proc
end subroutine
end
subroutine  aa
use mod
external tt
call s(tt)
end
subroutine tt
end
call aa
print *,'pass'
end

