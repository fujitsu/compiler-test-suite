      program main
      logical*1 la(65)
      real*4 a(65),b(65),res(65)
      call init(a,b,la,res,65)
      do i=1,2
        call test(a,b,la,65)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,la,res,n1)
      logical*1 la(n1)
      real*4 a(n1),b(n1),res(n1)

      do i=1,65
         b(i) = 0.0
         if (i .gt. n1/2) then
            la(i) = .true.
            a(i) = i
            res(i) = i
         else
            la(i) = .false.
            a(i) = 0.0
            res(i) = 0.0
         endif
      enddo
      end

      subroutine test(a,b,la,n1)
      logical*1 la(n1)
      real*4 a(n1),b(n1)
      
      do i=1,65
        if (la(i)) then
           b(i)=a(i)
        endif
      enddo
      
      end
