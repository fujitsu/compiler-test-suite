module m
type ty
 integer::a
 contains
  procedure,nopass::sub
  procedure,pass::sub2
 generic::gen=>sub,sub2
end type

type tty
 type (ty)::cmp
end type  

contains
 function sub(a)
        integer::a
        integer::sub
sub=0
  print*,"PASS"
 end function sub
  function sub2(aa)
         class(ty)::aa
         integer::sub2
sub2=0
   end function sub2
 end module
 use m
type(ty)::v2
integer::s,aa,ss

      type (tty)::obj3
      ss=obj3%cmp%sub(3)
       
end



