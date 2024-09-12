      call pro
      print *,'pass'
      end
      subroutine pro
      type str2
       integer z
      endtype
      type (str2) a(10)
      do 100 i=1,10
        a(i)%z=i
 100  continue
      call sub1(a)
      call sub2(a)
      call sub3(a)
      call sub4(a)
      call sub5(a)
      call sub6(a)
      call sub1(a(1)%z)
      call sub2(a(1)%z)
      call sub3(a(1)%z)
      call sub4(a(1)%z)
      call sub5(a(1)%z)
      call sub6(a(1)%z)
      call sub1(a(10))
      call sub2(a(10))
      call sub3(a(10))
      call sub4(a(10))
      call sub5(a(10))
      call sub6(a(10))
      end
      subroutine sub1(x)
      integer x
      integer m
      m=x
      end
      subroutine sub2(x)
      integer x(10)
      integer m
      m=x(1)
      end
      subroutine sub3(x)
      type str
       integer z(10)
      endtype
      type (str) x
      integer m
      m=x%z(1)
      end
      subroutine sub4(x)
      type str
       integer z(10)
      endtype
      type (str) x(10)
      integer m
      m=x(1)%z(1)
      end
      subroutine sub5(x)
      type str
       integer y
      endtype
      type (str) x
      integer m
      m=x%y
      end
      subroutine sub6(x)
      type str
       integer y
      endtype
      type (str) x(10)
      integer m
      m=x(1)%y
      end


