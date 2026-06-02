interface gen
  subroutine prc1(a1,a2,a3,a4,a5,a6,a7,a8)
    integer,optional :: a1,a3,a5,a7
    integer :: a2,a4,a6,a8
  end subroutine
  subroutine prc2(a1,a2,a3,a4,a5,a6,a7,a8)
    character,optional :: a2,a4,a6,a8
    character :: a1,a3,a5,a7
  end subroutine
end interface
call gen(a2=1,a4=2,a6=3,a8=4)
call gen(a8=4,a6=3,a4=2,a2=1)
call gen(a1='1',a3='2',a5='3',a7='4')
call gen(a7='4',a5='3',a3='2',a1='1')
print *,'pass'
end

subroutine prc1(a1,a2,a3,a4,a5,a6,a7,a8)
  integer,optional :: a1,a3,a5,a7
  integer :: a2,a4,a6,a8
  if (a2/=1) print *,'a2 err'
  if (a4/=2) print *,'a4 err'
  if (a6/=3) print *,'a6 err'
  if (a8/=4) print *,'a8 err'
end subroutine

subroutine prc2(a1,a2,a3,a4,a5,a6,a7,a8)
  character,optional :: a2,a4,a6,a8
  character :: a1,a3,a5,a7
  if (a1/='1') print *,"a1 err"
  if (a3/='2') print *,"a3 err"
  if (a5/='3') print *,"a5 err"
  if (a7/='4') print *,"a7 err"
end subroutine
