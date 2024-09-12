module mod
  public :: iii
  private :: jjj
  enum,bind(C)
    enumerator :: iii
    enumerator :: jjj
  end enum
end module
use mod
print *,'ok'
end
