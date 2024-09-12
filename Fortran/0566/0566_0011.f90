module m
type ty
 integer::a
 contains
  procedure,nopass::sub
  procedure,pass::sub2
 generic::gen=>sub,sub2
end type
type tty
 type(ty)::cmp
end type 

contains
  subroutine sub(a)
        integer::a
  print*,"PASS"
 end subroutine sub
  subroutine sub2(aa)
         class(ty)::aa
   end subroutine
 end module
 use m
type(ty)::v2
type(tty)::dd
integer::s
        call dd%cmp%sub(s)
        call dd%cmp%sub2()
end



