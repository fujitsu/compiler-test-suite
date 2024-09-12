module mod
  interface
    subroutine sub
    end subroutine
    subroutine sub1
    end subroutine
  end interface
end module

module mod1
  use mod
end module

module mod2
  use mod,only: sub22=>sub1
end module

use mod1,only: sub11=>sub
procedure(sub11),pointer:: a
a=>sub11
call a()
call sub2()
print *,'pass '
end

subroutine sub
  print *,'sub pass'
end

subroutine sub2
  use mod2,only: sub11=>sub22
  procedure(sub11),pointer:: a
  a=>sub11
  call a()
end

subroutine sub1
  print *,'sub1 pass'
end
