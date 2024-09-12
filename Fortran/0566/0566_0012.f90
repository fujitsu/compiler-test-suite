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
  print*,"PASS"
sub=0
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
          aa= v2%sub2()
         ss= v2%sub(s)
         ss= 5+34+v2%sub(s)
         ss= 5+34+v2%sub2()
         ss= sub(v2%sub2())
         ss= sub(v2%sub(s))

       
end



