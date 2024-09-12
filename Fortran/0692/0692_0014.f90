module mod
  private sub
  contains

  subroutine sub()
    print *,'sub'
  end subroutine
end module
use mod
call sub()
print *,'pass'
end
subroutine sub
end
