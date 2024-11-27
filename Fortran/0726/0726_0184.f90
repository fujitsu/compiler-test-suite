 call s1
 print *,'pass'
 end
 subroutine s1
 real a(3),aa(3)/.1,.2,.3/
 integer,dimension(3)::vs(3)=(/3,2,1/)
 a=fun(aa(vs))
 if (any(abs(a-sin(aa(3:1:-1)))>0.001))write(6,*) "NG"
  contains
   elemental function fun(a)
    intent(in)::a
    fun=sin(a)
   end function
 end
