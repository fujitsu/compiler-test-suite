 call s1
 print *,'pass'
 end
  module m1
  integer::j=3
  contains
   elemental function fun3(a,i)
    character*(*) a
    character*(len(a)) fun3
    intent(in)::a,i
    fun3=a
   end function
  end
 subroutine s1
 use m1
   interface
   elemental function fun2(a,i)
    character*(*) a
    character*(len(a)) fun2
    intent(in)::a,i
   end function
   end interface
 character*3,dimension(3):: a1,a2,a3,a4,a5,a6
 character*3 aa(3)/'111','222','333'/
 kk=3
 a1=fun1(aa,j)
 if (any(a1/=aa)) write(6,*) "NG"
 a2=fun2(aa,j)
 if (any(a2/=aa)) write(6,*) "NG"
 a3=fun3(aa,j)
 if (any(a3/=aa)) write(6,*) "NG"
 call ss1(aa,a4,a5,a6)
  contains
   elemental function fun1(a,i)
    character*(kk) fun1,a
    intent(in)::a,i
    fun1=a
   end function
   subroutine ss1(aa,a1,a2,a3)
   character*(*),dimension(:)::aa,a1,a2,a3
 a1=fun1(aa,j)
 if (any(a1/=aa)) write(6,*) "NG"
 a2=fun2(aa,j)
 if (any(a2/=aa)) write(6,*) "NG"
 a3=fun3(aa,j)
 if (any(a3/=aa)) write(6,*) "NG"
 end subroutine
 end
   elemental function fun2(a,i)
    character*(*) a
    character*(len(a)) fun2
    intent(in)::a,i
    fun2=a
   end function
