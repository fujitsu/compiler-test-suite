      call pro
      print *,'pass'
      end
      subroutine pro
      structure /str/
       integer y(10)
      endstructure
      structure /str1/
       record /str/ z(10)
      endstructure
      record /str1/ a(10)
      do 100 i=1,10
        do 200 j=1,10
          do 300 k=1,10
            a(i).z(j).y(k)=i*100+j*10+k
 300      continue
 200    continue
 100  continue
      call sub1(a)
      call sub2(a)
      call sub3(a)
      call sub4(a)
      call sub1(a(1))
      call sub2(a(1))
      call sub3(a(1))
      call sub4(a(1))
      call sub1(a(1).z)
      call sub2(a(1).z)
      call sub5(a(1).z)
      call sub6(a(1).z)
      call sub1(a(1).z(1))
      call sub2(a(1).z(1))
      call sub5(a(1).z(1))
      call sub6(a(1).z(1))
      call sub1(a(1).z(1).y)
      call sub2(a(1).z(1).y)
      call sub1(a(1).z(1).y(1))
      call sub2(a(1).z(1).y(1))
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
       integer y(10)
      endstructure
      structure /str1/
       record /str/ z(10)
      endstructure
      record /str1/ x
      integer m
      m=x.z(1).y(1)
      end
      subroutine sub4(x)
      structure /str/
       integer y(10)
      endstructure
      structure /str1/
       record /str/ z(10)
      endstructure
      record /str1/ x(10)
      integer m
      m=x(1).z(1).y(1)
      end
      subroutine sub5(x)
      structure /str/
       integer y(10)
      endstructure
      record /str/ x
      integer m
      m=x.y(1)
      end
      subroutine sub6(x)
      structure /str/
       integer y(10)
      endstructure
      record /str/ x(10)
      integer m
      m=x(1).y(1)
      end
      subroutine sub7(x)
      structure /str/
       integer y
      endstructure
      structure /str1/
       record /str/ z
      endstructure
      record /str1/ x
      integer m
      m=x.z.y
      end
      subroutine sub8(x)
      structure /str/
       integer y(10)
      endstructure
      structure /str1/
       record /str/ z(10)
      endstructure
      record /str1/ x(10)
      integer m
      m=x(10).z(1).y(1)
      end
