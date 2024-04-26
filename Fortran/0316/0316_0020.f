
      n=100
      call sub(n)
      print *,'*** ok ***'
      end

      subroutine sub(n)
      integer a(n)
      a=1
      do i=1,n
        if (a(i).ne.1) then
          print *,'??? ng ???'
          stop
        endif
      enddo
      end
