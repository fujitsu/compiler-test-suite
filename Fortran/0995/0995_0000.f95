  type aaa
    integer :: a0
    character::a1
    integer :: a2
    character :: a3
  end type

  type bbb
    integer :: b0
    character,pointer::b1
    integer :: b2
    character :: b3
  end type

  type ccc
    integer :: c0
    character::c1
    integer :: c2
    integer,pointer :: c3
    character :: c4
  end type

  end 