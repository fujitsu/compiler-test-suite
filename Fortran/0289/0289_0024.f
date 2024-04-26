      common  ans1,ans2
      ans1=111.
      ans2=222.
      call sub1
      call sub1
      call sub2
      call sub2
      call sub3
      call sub3
      if (ans1+ans2.ne.0.) then
       print *,'ans1= ',ans1
       print *,'ans2= ',ans2
      else
       print *,'*** ok ***'
       end if
      end
      subroutine sub1
      external fun1
      common  ans1,ans2
      a=3.324+ans1
      b=6.432+ans2
      ans1=fun1(a,b)
      ans2=fun2(a,b)
      end
      subroutine sub2
      external fun1,fun2
      common  ans1,ans2
      a=8.546-ans1
      b=4.987-ans2
      ans1=fun1(a,b)+fun3(a,b)
      ans2=fun2(a,b)+fun3(a,b)
      end
      subroutine sub3
      external fun1,fun2,fun3
      common  ans1,ans2
      a=2.466*ans1
      b=7.541*ans2
      ans1=fun1(a,b)+fun3(a,b)
      ans2=fun2(a,b)+fun3(a,b)
      end
      function fun1(d1,d2)
      common  ans1,ans2
      fun1=d1+d2+ans1+ans2
      end
      function fun2(d1,d2)
      common  ans1,ans2
      fun2=d1+d2-ans1+ans2
      end
      function fun3(d1,d2)
      common  ans1,ans2
      fun3=d1+d2-ans1-ans2
      end
