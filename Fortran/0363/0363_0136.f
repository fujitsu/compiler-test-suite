      program main
      logical*1 l(65),m(65)
      integer list(1)
      real*4 a(65),b(65),c(65),res(65)
      call init(l,m,a,b,c,list,res,65)
      do i=1,2
        call test(l,m,a,b,c,list,65)
      enddo
      do i=1,65
         if(c(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(l,m,a,b,c,list,res,n1)
      logical*1 l(n1),m(n1)
      integer list(1)
      real*4 a(n1),b(n1),c(n1),res(n1)
      list(1) = n1

      do i=1,list(1)
         b(i) = 0.0
         c(i) = 0.0
         if ( i .gt. n1/2 ) then
            l(i) = .TRUE.
            m(i) = .FALSE.
            a(i) = -i
            res(i) = 0.0
         elseif ( i .lt. n1/2 ) then
            l(i) = .TRUE.
            m(i) = .TRUE.
            a(i) = i
            res(i) = i
         else
            l(i) = .FALSE.
            m(i) = .FALSE.
            a(i) = 0.0
            res(i) = 0.0
         endif
      enddo
      end

      subroutine test(l,m,a,b,c,list,n1)
      logical*1 l(n1),m(n1)
      integer list(1)
      real*4 a(n1),b(n1),c(n1)
      
      do i=1,list(1)
        if (l(i)) then
           b(i)=a(i)
           if (m(i)) then
             c(i)=b(i)
           endif
        endif
      enddo
      
      end
