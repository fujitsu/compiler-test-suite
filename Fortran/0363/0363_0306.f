      program main
      real(4) a(65),b(65),res(65)
      logical(2) lb(65)
      call init(a,b,lb,res,65)
      do i=1,2
        call test(a,b,lb,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,lb,res,n1)
      real(4) a(n1),b(n1),res(n1)
      logical(2) lb(n1)

      do i=1,65
         b(i) = 0
         if (i .gt. n1/2) then
            lb(i) = .false.
            a(i) = i
            b(i) = i
            res(i) = i
         else
            lb(i) = .true.
            a(i) = i
            b(i) = i
            res(i) = i
         endif
      enddo
      end

      subroutine test(a,b,lb,n1)
      real(4) a(n1),b(n1)
      logical(2) lb(n1)
      
      do i=1,65
         if ( lb(i) ) go to 11
         a(i) = b(i)
 11      a(i) = b(i)
 10   enddo
      
      end
