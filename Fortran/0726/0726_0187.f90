 call s1
 print *,'pass'
 end
  module m1
  contains
   elemental function fun3(a)
    character*(3) fun3,a
    intent(in)::a
    fun3=a
   end function
  end
 subroutine s1
 use m1
   interface
   elemental function fun2(a)
    character*(3) fun2,a
    intent(in)::a
   end function
   end interface
 character*3,dimension(3):: a1,a2,a3,a4,a5,a6
 character*3 aa(3)/'111','222','333'/
 a1=fun1(aa)
 if (any(a1/=aa)) write(6,*) "NG"
 a2=fun2(aa)
 if (any(a2/=aa)) write(6,*) "NG"
 a3=fun3(aa)
 if (any(a3/=aa)) write(6,*) "NG"
 call ss1(aa,a4,a5,a6)
  contains
   elemental function fun1(a)
    character*(3) fun1,a
    intent(in)::a
    fun1=a
   end function
   subroutine ss1(aa,a1,a2,a3)
   character*(*),dimension(:)::aa,a1,a2,a3
 a1=fun1(aa)
 if (any(a1/=aa)) write(6,*) "NG"
 a2=fun2(aa)
 if (any(a2/=aa)) write(6,*) "NG"
 a3=fun3(aa)
 if (any(a3/=aa)) write(6,*) "NG"
 end subroutine
 end
   elemental function fun2(a)
    character*(3) fun2,a
    intent(in)::a
    fun2=a
   end function
