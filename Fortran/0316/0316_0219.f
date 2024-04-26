
      call sub(10)
      print *,'*** ok ***'
      end

      recursive subroutine sub(n)
      integer,allocatable,dimension(:) ::a
      integer n,b

      allocate(a(1:1))
      a(1)=n ; b=n
      n=n-1
      if (n>0) call sub(n)
      if (a(1) /= b) then
        print *,'??? ng ???'
        stop
      endif
      end
