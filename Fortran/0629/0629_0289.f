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
            a(i).z(j).y(k)=1
 300      continue
 200    continue
 100  continue

      call sub6(a(1).z(1))
      print*,'COMPILE OK'
      print*,'CONFIRM COMMENTS IN THE TEST PROGRAM FOR THE DETAIL'
      end
      subroutine sub6(x)
      structure /str/
       integer y(10)
      endstructure
      record /str/ x(10)
      integer m
      m=x(1).y(1)
      end
