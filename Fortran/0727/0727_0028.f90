 call s1
 print *,'pass'
 end
 subroutine s1
 character*9,dimension(3):: a1
 character*9,dimension(3):: a1m=(/'111111111','222222222','333333333'/)
 character*3 aa2(3)/'111','222','333'/
 a1=fun1(aa2)//fun1(aa2)//fun1(aa2)
 if (any(a1/=a1m))write(6,*) "NG"
 call su(fun1(aa2)//fun1(aa2)//fun1(aa2))
 a1(3)=fun1(aa2(2))//fun1(aa2(2))//fun1(aa2(2))
 if (a1(3)/=a1m(2))write(6,*) "NG"
 call su(fun1(aa2)//fun1(aa2)//fun1(aa2))
 call sc(fun1(aa2(2))//fun1(aa2(2))//fun1(aa2(2)))
  contains
   elemental function fun1(a)
    character*(*) a
    character*(len(a)) fun1
    intent(in)::a
    fun1=a
   end function
   subroutine su(c)
   character*(*),dimension(:)::c
   if (any(c/=a1m))write(6,*) "NG"
   if (len(c)/=len(a1m))write(6,*) "NG"
   end subroutine
   subroutine sc(c)
   character*(*)::c
   if (c/=a1m(2))write(6,*) "NG"
   if (len(c)/=len(a1m))write(6,*) "NG"
   end subroutine
 end
