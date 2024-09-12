      program main
      real,dimension(10000)::a,b

      do i=1,10000
        a(i) = i
        b(i) = i + 1
      enddo
      call sub(a,b)
      print*, a(10000),b(10000)
      end

      subroutine sub(a,b)
      real,dimension(10000)::a,b
      real t1,t2
      do i=1,10000
        t1=a(i)
        t2=t1
        b(i)=t2
      enddo
      end subroutine
