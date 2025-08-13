 call s1
 print *,'pass'
 end
  module m1
  contains
   elemental function fun3(a)
    character*(*) a
    character*(len(a)) fun3
    intent(in)::a
    fun3=a
   end function
  end
 subroutine s1
 use m1
   interface
   elemental function fun2(a)
    character*(*) a
    character*(len(a)) fun2
    intent(in)::a
   end function
   end interface
 character*6,dimension(3):: a1,a2,a3,a4,a5,a6
 character*3 aa(3)/'111','222','333'/
 a1=fun1(aa)//fun1(aa)
 if (any(a1/=aa//aa)) write(6,*) "NG"
 a2=fun2(aa)//fun1(aa)
 if (any(a2/=aa//aa)) write(6,*) "NG"
 a3=fun3(aa)//fun3(aa)
 if (any(a3/=aa//aa)) write(6,*) "NG"
 call ss2(fun1(aa)//fun1(aa))
 call ss2(fun2(aa)//fun2(aa))
 call ss2(fun3(aa)//fun3(aa))
 write(4,*)fun1(aa)//fun1(aa)
 write(4,*)fun2(aa)//fun2(aa)
 write(4,*)fun3(aa)//fun3(aa)
 call ss1(aa,a4,a5,a6)
 call chk
  contains
   elemental function fun1(a)
    character*(*) a
    character*(len(a)) fun1
    intent(in)::a
    fun1=a
   end function
   subroutine ss1(aa,a1,a2,a3)
   character*(*),dimension(:)::aa,a1,a2,a3
 a1=fun1(aa)//fun1(aa)
 if (any(a1/=aa//aa)) write(6,*) "NG"
 a2=fun2(aa)//fun2(aa)
 if (any(a2/=aa//aa)) write(6,*) "NG"
 a3=fun3(aa)//fun3(aa)
 if (any(a3/=aa//aa)) write(6,*) "NG"
 call ss2(fun1(aa)//fun1(aa))
 call ss2(fun2(aa)//fun2(aa))
 call ss2(fun3(aa)//fun3(aa))
 write(4,*)fun1(aa)//fun1(aa)
 write(4,*)fun2(aa)//fun2(aa)
 write(4,*)fun3(aa)//fun3(aa)
 end subroutine
 subroutine ss2(ww)
 character*(*),dimension(:)::ww
 if (len(ww)/=6) write(6,*) "NG"
 if (size(ww)/=3)write(6,*) "NG"
 if (any(ww/=aa//aa))write(6,*) "NG"
 end subroutine
 end
   elemental function fun2(a)
    character*(*) a
    character*(len(a)) fun2
    intent(in)::a
    fun2=a
   end function
 subroutine chk
 character*19 x,xx/' 111111222222333333'/
 rewind 4
 read(4,'(a)') x;if (x/=xx)write(6,*) "NG"
 read(4,'(a)') x;if (x/=xx)write(6,*) "NG"
 read(4,'(a)') x;if (x/=xx)write(6,*) "NG"
 read(4,'(a)') x;if (x/=xx)write(6,*) "NG"
 read(4,'(a)') x;if (x/=xx)write(6,*) "NG"
 read(4,'(a)') x;if (x/=xx)write(6,*) "NG"
end
