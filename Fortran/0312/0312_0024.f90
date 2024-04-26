module mod
  implicit none
  public :: ppp
  character(len = 10), private :: Line

contains

  recursive subroutine ppp()
  print *, Line
  end subroutine ppp

end

print *,'PASS'
end
