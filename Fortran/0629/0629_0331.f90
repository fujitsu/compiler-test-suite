      call sub1()
      end

      subroutine sub1()
      integer*1 i1
      integer  a(10)
      a = 1
      forall(i1=a(1):10:a(1))
        a(i1)=i1
      endforall
      write(6,*) a
      end subroutine
