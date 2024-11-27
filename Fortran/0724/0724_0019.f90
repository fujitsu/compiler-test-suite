module mod01
 interface
  subroutine bsubA()  bind(c)
  end subroutine
  subroutine bsubB()  bind(c, name = 'ssss')
  end subroutine
 end interface
 procedure(bsubA)  ,  bind(c)                 ::  msub_pbAA
 procedure(bsubA)  ,  bind(c, name = 'aaaa')  ::  msub_pbAB
 procedure(bsubB)  ,  bind(c)                 ::  msub_pbBA
 procedure(bsubB)  ,  bind(c, name = 'bbbb')  ::  msub_pbBB
 contains
  subroutine bsub0()  bind(c)
  end subroutine
  subroutine bsub1()  bind(c, name = 'cccc')
  end subroutine
end module

use mod01

interface
 subroutine sub1(bsub2)
  interface
   subroutine bsub2() bind(c)
   end subroutine
  end interface
 end subroutine
end interface

procedure(bsubA)  ,  bind(c)                 ::  sub_pbAA
procedure(bsubA)  ,  bind(c, name = 'xxxx')  ::  sub_pbAB
procedure(bsubB)  ,  bind(c)                 ::  sub_pbBA
procedure(bsubB)  ,  bind(c, name = 'yyyy')  ::  sub_pbBB
procedure(bsub0)  ,  bind(c)                 ::  sub_pb0A
procedure(bsub0)  ,  bind(c, name = 'eeee')  ::  sub_pb0B
procedure(bsub1)  ,  bind(c)                 ::  sub_pb1A
procedure(bsub1)  ,  bind(c, name = 'ffff')  ::  sub_pb1B

call sub1(msub_pbAA)
call sub1(msub_pbAB)
call sub1(msub_pbBA)
call sub1(msub_pbBB)

call sub1(sub_pbAA)
call sub1(sub_pbAB)
call sub1(sub_pbBA)
call sub1(sub_pbBB)
call sub1(sub_pb0A)
call sub1(sub_pb0B)
call sub1(sub_pb1A)
call sub1(sub_pb1B)

call sub_pbAA()
call sub_pbAB()
call sub_pbBA()
call sub_pbBB()
call sub_pb0A()
call sub_pb0B()
call sub_pb1A()
call sub_pb1B()

end

subroutine sub1(bsub2)
 interface
  subroutine bsub2() bind(c)
  end subroutine
 end interface
end subroutine

subroutine bsubA()  bind(c)
end subroutine

subroutine bsubB()  bind(c, name = 'ssss')
end subroutine

subroutine sub_pbAA() bind(c)
end subroutine

subroutine sub_pbAB() bind(c, name = 'xxxx')
end subroutine

subroutine sub_pbBA() bind(c)
end subroutine

subroutine sub_pbBB() bind(c, name = 'yyyy')
end subroutine

subroutine sub_pb0A() bind(c)
end subroutine

subroutine sub_pb0B() bind(c, name = 'eeee')
end subroutine

subroutine sub_pb1A() bind(c)
end subroutine

subroutine sub_pb1B() bind(c, name = 'ffff')
end subroutine

subroutine msub_pbAA() bind(c)
end subroutine

subroutine msub_pbAB() bind(c, name = 'aaaa')
end subroutine

subroutine msub_pbBA() bind(c)
end subroutine

subroutine msub_pbBB() bind(c, name = 'bbbb')
end subroutine
