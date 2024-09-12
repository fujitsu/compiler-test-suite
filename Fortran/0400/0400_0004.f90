module m1
  interface gnr
    procedure :: prc1
  end interface
  interface gnr
    module procedure :: prc2
  end interface
contains
  subroutine prc1(i4)
    if (i4/=1) print *,101
  end subroutine
  subroutine prc2(i4)
    integer(8)::i4
    if (i4/=2) print *,102
  end subroutine
end
use m1
call gnr(1_4)
call gnr(2_8)
print *,'pass'
end
  
