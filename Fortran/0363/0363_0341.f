      program main
      logical*4 la(65),lb(65)
      real*4 a(65),b(65),res(65)
      call init(a,b,la,lb,res,65)
      do i=1,2
        call test(a,b,la,lb,65)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,la,lb,res,n1)
      logical*4 la(n1),lb(n1)
      real*4 a(n1),b(n1),res(n1)

      do i=1,65
         b(i) = 0.0
         if ( i .gt. n1/2) then
            a(i) = i
            la(i) = .true.
            lb(i) = .true.
            res(i) = i
         elseif ( i .lt. n1/2) then
            a(i) = i
            la(i) = .true.
            lb(i) = .false.
            res(i) = i
         else
            a(i) = 0.0
            la(i) = .false.
            lb(i) = .false.
            res(i) = 0.0
         endif
      enddo
      end

      subroutine test(a,b,la,lb,n1)
      logical*4 la(n1),lb(n1)
      real*4 a(n1),b(n1)
      
      do i=1,65
        if (la(i) .or. lb(i)) then
           b(i)=a(i)
        endif
      enddo
      
      end
