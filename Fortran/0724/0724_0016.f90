end

subroutine out_sub1(sub1) bind(c)
 interface
  subroutine sub1() bind(c)
  end subroutine
 end interface
 call sub1()
end subroutine

subroutine out_sub2(prc_sub1) bind(c)
 interface
  subroutine sub1() bind(c)
  end subroutine
 end interface
 procedure(sub1) :: prc_sub1
 call prc_sub1()
end subroutine

subroutine out_sub3(psp) bind(c)
 interface
  subroutine sub1() bind(c)
  end subroutine
 end interface
 procedure(sub1), pointer :: psp
 psp => sub1
 call psp()
end subroutine

subroutine out_sub4(sub2) bind(c)
 interface
  subroutine sub2()
  end subroutine
 end interface
 call sub2()
end subroutine

subroutine out_sub5(sub2) bind(c)
 interface
  subroutine sub2()
  end subroutine
 end interface
 procedure(sub2) :: prc_sub2
 call prc_sub2()
end subroutine

subroutine out_sub6(psp) bind(c)
 interface
  subroutine sub2()
  end subroutine
 end interface
 procedure(sub2), pointer :: psp
 psp => sub2
 call psp()
end subroutine

subroutine out_sub7(prc_sub3) bind(c)
 procedure() :: prc_sub3
 call prc_sub3()
end subroutine

subroutine out_sub8(prc_sub4) bind(c)
 procedure(real) :: prc_sub4
 rr = prc_sub4()
end subroutine

subroutine prc_sub1() bind(c)
end subroutine

subroutine prc_sub2()
end subroutine

subroutine sub1() bind(c)
end subroutine

subroutine sub2()
end subroutine
