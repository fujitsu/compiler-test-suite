      program main
        call sub1(5)
        call sub2(5)
        call sub3(5)
        call sub4(5)
      stop 
      end

      subroutine sub1(n)
      integer a(5),b(5)
      pointer (pb,b)
      pb=loc(a)

      a(1)=1
      do i=1,n
         a(1)=a(1)+b(1)
      enddo

      if(b(1).eq.32) then
        print *, '*** #1 ok ***   ', b(1)
      else
        print *, '*** #1 ng ***   ', b(1)
      endif

      return
      end

      subroutine sub2(n)
      integer a(5),b(5)
      pointer (pb,b)
      pb=loc(a)

      b(1)=1
      do i=1,n
         b(1)=b(1)+a(1)
      enddo

      if(a(1).eq.32) then
        print *, '*** #2 ok ***   ', a(1)
      else
        print *, '*** #2 ng ***   ', a(1)
      endif

      return
      end

      subroutine sub3(n)
      integer a(5),b(5),c(5),d(5),check1
      pointer (pb,b),(pc,c)
      equivalence (pb,pc)
      pb=loc(a)

      b=100
      do i=1,n
         d(i)=b(1)+b(1)
         call addptr(pc)
      enddo

      if(check1(d).eq.1) then
        print *, '*** #3 ok ***   ', d
      else
        print *, '*** #3 ng ***   ', d
      endif

      return
      end

      subroutine sub4(n)
      integer a(5),b(5),c(5),d(5),check2
      pointer (pb,b),(pc,c)
      equivalence (pb,pc)
      pb=loc(a)

      do i=1,5
         b(i)=i
      enddo 

      do i=1,n
         d(i)=b(1)+b(1)
         pc=pc+4
      enddo

      if(check2(d).eq.1) then
        print *, '*** #4 ok ***   ', d
      else
        print *, '*** #4 ng ***   ', d
      endif

      return
      end

      subroutine addptr(px)
      integer x
      pointer (px,x)
      px=px+4
      return
      end

      integer function check1(w)
      integer w(5)
      check1=1
      do i=1,5
         if(w(i).ne.200) check1=0
      enddo
      return
      end

      integer function check2(w)
      integer w(5)
      check2=1
      do i=1,5
         if(w(i).ne.i*2) check2=0
      enddo
      return
      end
