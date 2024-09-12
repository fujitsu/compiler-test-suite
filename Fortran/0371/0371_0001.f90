  implicit none
  integer,target::s0    = 1
  integer,target::a0(3) = (/10,20,30/)

  integer,target::s1    = 2
  integer,target::a1(4) = (/20,40,60,80/)

  type tya
     integer,pointer :: pa0=>s0
     integer,pointer :: pa1(:)=>a0
     integer,pointer :: pa2=>s0
     integer,pointer :: pa3(:)=>a0
     integer :: ss = 5
  end type tya

  type tyb
     type(tya) :: ba = tya(s1,a1)
  end type tyb
  
  type(tya) :: stra
  type(tyb) :: strb

  print *,stra%pa0, stra%pa1, stra%pa2, stra%pa3, stra%ss
  print *,strb%ba%pa0, strb%ba%pa1, strb%ba%pa2, strb%ba%pa3, strb%ba%ss
end program
