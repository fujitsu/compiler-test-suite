integer i(2),j
interface
  subroutine xxx(a,b)
   integer::a(..)
        type(*):: b
  end subroutine
  end interface
  call xxx(i,j)
  end

  subroutine xxx(a,b)
   integer::a(..)
    type(*):: b
   if(rank(a)/=1)print*,101
   if(rank(b)/=0)print*,102
  print*,"PASS"
  end subroutine
