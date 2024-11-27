module mod01
 interface
  subroutine m1subA1()
  end subroutine
  subroutine m1subA2()
  end subroutine
  subroutine m1subA3()
  end subroutine
  subroutine m1subB1()
  end subroutine
  subroutine m1subB2()
  end subroutine
  subroutine m1subB3()
  end subroutine
 end interface
 contains
  subroutine m1sub01(m1arg01, m1arg02)
   procedure(m1sub02), pointer :: m1arg01
   procedure(m1sub03), pointer :: m1arg02
   m1arg01 => m1arg02
  end subroutine
  subroutine m1sub02(m1arg01, m1arg02)
   procedure(m1sub0A) :: m1arg01
   procedure(m1sub0B) :: m1arg02
  end subroutine
  subroutine m1sub03(m1arg01, m1arg02)
   procedure(m1sub0A) :: m1arg01
   procedure(m1sub0B) :: m1arg02
  end subroutine
  subroutine m1sub0A(m1arg01, m1arg02, m1arg03)
   procedure(m1subA1) :: m1arg01
   procedure(m1subA2) :: m1arg02
   procedure(m1subA3) :: m1arg03
  end subroutine
  subroutine m1sub0B(m1arg01, m1arg02, m1arg03)
   procedure(m1subB1) :: m1arg01
   procedure(m1subB2) :: m1arg02
   procedure(m1subB3) :: m1arg03
  end subroutine

  subroutine m1sub04()
   procedure(m1sub02), pointer :: m1subp02
   procedure(m1sub03), pointer :: m1subp03
   call m1sub01(m1subp02, m1subp03)
  end subroutine

end module

use mod01

call m1sub04()

end

subroutine m1subA1()
end subroutine

subroutine m1subA2()
end subroutine

subroutine m1subA3()
end subroutine

subroutine m1subB1()
end subroutine

subroutine m1subB2()
end subroutine

subroutine m1subB3()
end subroutine
