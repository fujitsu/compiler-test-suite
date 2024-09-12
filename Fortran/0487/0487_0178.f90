       module m1

        interface gen
          procedure :: s1,s2
        end interface
       integer::f=0

       contains

       subroutine s1(f)
       procedure(fun2):: f
       if (any(f(0.1)/=fun2(0.1))) print *,101
       end subroutine

      subroutine s2(f1)
      procedure(fun):: f1
      if (f1(0.1)/=fun(0.1)) print *,102
      end subroutine

      integer function fun(d1)
      fun=d1
      f=f+1
      end function

      function fun2(d1)
      integer fun2(2)
      fun2=d1
      f=f+10
      end function

      end
      use m1
      call gen( fun2)
   if (f/=20) print *,201,f
      call gen( fun )
   if (f/=11*2) print *,202,f
      call s1 ( fun2)
   if (f/=21*2) print *,203,f
      call s2 ( fun )
   if (f/=22*2) print *,204,f
      print *,'pass'
      end
