module m
type ty
 integer::a
 contains
  procedure,nopass::fun
  procedure,pass::fun2
end type

type tty
 type (ty)::cmp
end type  

contains
 function fun(a,k)
        integer::a
        integer::fun
        fun=10
if (k==1) then
        if (a/=1) print *,401
endif
  print*,"PASS"
 end function fun
  function fun2(aa)
         class(ty)::aa
         integer::fun2
         fun2=10
         aa%a=33
   end function fun2
 end module
 use m
type(ty)::v2
integer::s=1,aa=1,ss=1
          aa= v2%fun2()
         ss= v2%fun(s,1)
         ss= 5+34+v2%fun(s,1)
         ss= 5+34+v2%fun2()
         ss= fun(v2%fun2(),0)
         ss= fun(v2%fun(s,1),0)
         if(aa /=10) print*,101
         if(ss /=10) print*,102
       
end



