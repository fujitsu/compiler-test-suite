
       module mod10
       integer,dimension(:),allocatable ::a
       end

      use mod10
      allocate (a(10))
      a=10
      call sub()
      end

      subroutine sub()
      use mod10
      do i=1,10
        if (a(i).ne.10) then
          print *,i,a(i)
          print *,'??? ng ???'
         stop 1
        endif
      enddo
      print *,'*** ok ***'
      end 
