      call pro
      print *,'pass'
      end
      subroutine pro
      structure /str/
       integer z(10)
      endstructure
      record /str/ a
      do 100 i=1,10
        a.z(i)=i
 100  continue
      call sub1(a)
      call sub2(a)
      call sub3(a)
      call sub4(a)
      call sub5(a)
      call sub6(a)
      call sub1(a.z)
      call sub2(a.z)
      call sub3(a.z)
      call sub4(a.z)
      call sub5(a.z)
      call sub6(a.z)
      call sub1(a.z(1))
      call sub2(a.z(1))
      call sub3(a.z(1))
      call sub4(a.z(1))
      call sub5(a.z(1))
      call sub6(a.z(1))
      call sub1(a.z(3))
      call sub2(a.z(3))
      call sub3(a.z(3))
      call sub4(a.z(3))
      call sub5(a.z(3))
      call sub6(a.z(3))
      print *,'pass'
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
      structure /str/
       integer z(10)
      endstructure
      record /str/ x
      integer m
      m=x.z(1)
      end
      subroutine sub4(x)
      structure /str/
       integer z(10)
      endstructure
      record /str/ x(10)
      integer m
      m=x(1).z(1)
      end
      subroutine sub5(x)
      structure /str/
       integer y
      endstructure
      record /str/ x
      integer m
      m=x.y
      end
      subroutine sub6(x)
      structure /str/
       integer y
      endstructure
      record /str/ x(10)
      integer m
      m=x(1).y
      end


