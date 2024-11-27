 call s1
 print *,'pass'
 end
 module m1
  contains
   elemental function fun(a)
    complex fun,a
    intent(in)::a
    fun=sin(a)
   end function
 end
 subroutine s1
 use m1
 complex a(3),aa(3)/(.1,.1),(.2,.2),(.3,.3)/
 a=sin(aa)+fun(aa)
 if (any(abs(a-sin(aa)*2)>0.001))write(6,*) "NG"
 call ss1
 end
 subroutine ss1
 use m1
 complex a(3),aa(3)/(.1,.1),(.2,.2),(.3,.3)/
 integer,dimension(3)::vs(3)=(/3,2,1/)
 a=fun(aa(vs))
 if (any(abs(a-sin(aa(3:1:-1)))>0.001))write(6,*) "NG"
 end
