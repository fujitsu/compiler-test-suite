module mod1
  enum,bind(C)
    enumerator :: iii
    enumerator :: jjj
  end enum
end module

module mod2
  use mod1
  enum,bind(C)
    enumerator :: kkk = (100+jjj)
    enumerator :: lll = (102)
  end enum
end module

use mod2
if (iii .ne. 0) print *,'err'
if (jjj .ne. 1) print *,'err'
if (kkk .ne. 101) print *,'err'
if (lll .ne. 102) print *,'err'
print *,'ok'
end
