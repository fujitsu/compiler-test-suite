module mod
  enum,bind(C)
    enumerator :: iii
    enumerator :: jjj
  end enum
  public :: iii
  private :: jjj
end module
use mod
print *,'ok'
end
