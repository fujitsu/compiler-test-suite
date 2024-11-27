subroutine exsub() bind(C)
  print *,'exsub'
end subroutine

module mod
  contains
  subroutine sub(proc) bind(C)
  external :: proc
  call proc()
  end subroutine
end module

use mod
interface
subroutine exsub() bind(C)
end subroutine
end interface
call sub(exsub)
end
