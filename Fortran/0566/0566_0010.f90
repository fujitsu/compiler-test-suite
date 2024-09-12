module m
type ty
 integer::a
 contains
  procedure,nopass::sub
  procedure,pass::sub2
 generic::gen=>sub,sub2
end type

contains
  subroutine sub(a)
        integer::a
 end subroutine sub
  subroutine sub2(aa)
         class(ty)::aa
   end subroutine
 end module
 use m
type(ty)::v2
integer::s
          call v2%sub2()
          call v2%sub(s)

          call sub(s)
  print*,"PASS"
end



