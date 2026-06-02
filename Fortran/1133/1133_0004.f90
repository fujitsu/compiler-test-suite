module m
  interface gen
    subroutine prc1(a1,a2,a3,a4,a5,a6,a7,a8)
      integer,optional :: a1,a2,a3,a4
      integer :: a5,a6,a7,a8
    end subroutine
    subroutine prc2(a1,a2,a3,a4,a5,a6,a7,a8)
      character,optional :: a5,a6,a7,a8
      character :: a1,a2,a3,a4
    end subroutine
  end interface
contains
  subroutine module_proc
    call gen(a5=5,a6=6,a7=7,a8=8)
    call gen(a8=8,a7=7,a6=6,a5=5)
    call gen('1','2','3','4')
    call gen(a4='4',a3='3',a2='2',a1='1')
  end subroutine
end

use m
call module_proc
print *,'pass'
end

subroutine prc1(a1,a2,a3,a4,a5,a6,a7,a8)
  integer,optional :: a1,a2,a3,a4
  integer :: a5,a6,a7,a8
  if (a5/=5) print *,'a5 err'
  if (a6/=6) print *,'a6 err'
  if (a7/=7) print *,'a7 err'
  if (a8/=8) print *,'a8 err'
end subroutine

subroutine prc2(a1,a2,a3,a4,a5,a6,a7,a8)
  character,optional :: a5,a6,a7,a8
  character :: a1,a2,a3,a4
  if (a1/='1') print *,"a1 err"
  if (a2/='2') print *,"a2 err"
  if (a3/='3') print *,"a3 err"
  if (a4/='4') print *,"a4 err"
end subroutine
