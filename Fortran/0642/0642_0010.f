      call pro
      print *,'pass'
      end
      subroutine pro
      structure /str/
       integer y
      endstructure
      structure /str1/
       record /str/ z
      endstructure
      record /str1/ a(10)
      a(1).z.y=1                
      call sub1(a)
      call sub1(a(1))
      end
      subroutine sub1(x)
      structure /str/
       integer y
      endstructure
      structure /str1/
       record /str/ z
      endstructure
      record /str1/ x(10),y
      y=x(1)
      end
