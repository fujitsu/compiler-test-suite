module m
type ty
 integer::a
 contains
  procedure,nopass::fun
  procedure,pass::fun2
 generic::gen=>fun,fun2
end type

type tty
 type (ty)::cmp
end type  
      type (tty)::obj3

contains
 function fun(a)
        integer::a
        integer::fun
        fun=a+10
  print*,"PASS"
 end function fun
  function fun2(aa)
         class(ty)::aa
         integer::fun2
         fun2=aa%a
   end function fun2
 end module
 use m
integer::ss=1


      ss=obj3%cmp%fun(3)
      if(ss /=13)print*,101
       
end



