      call pro
      print *,'pass'
      end
      subroutine pro
      integer a(4),b(10)
      character*10 c,d(10)
      intrinsic cos
      call sub(a,b(5),c(1:5),d(5)(1:5))
      call sub1(b)
      call sub3(cos)
      call sub2(100,real(a))
      end
      subroutine sub(a,b,c,d)
      integer a(4),b(3)
      character*5 c(10),d(10),e(10)*10
      do 10 i=1,3
   10    j=a(i)+b(i)
      e(1)(1:10)=c(1)(1:5)//d(1)(1:5)
      return
      end
      subroutine sub1(b)
      integer b
      b=b+b
      end
      subroutine sub2(a,b)
      integer a
      real    b
      a=30
      b=1.0
      end
      subroutine sub3(fun)
      real fun(10),r
      r=fun(10)
      end
