      program main
      logical(8) la(65)
      real(8) a(65),b(65),res(65)
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
      logical(8) la(65)
      real(8)  a(n1),b(n1),res(n1)

      do i=1,65
         a(i) = 0
         b(i) = 0
         if ( i .gt. n1/2) then
            la(i) = .TRUE.
            res(i) = 1.0
         else
            la(i) = .FALSE.
            res(i) = 0.0
         endif
      enddo
      end

      subroutine test(a,b,la,n1)
      logical(8) la(65)
      real(8) a(n1),b(n1)
      
      do i=1,65
         if ( la(i) ) then
            b(i) = 1.0
            goto 10
         endif
 10      a(i) = 2.0
      enddo
      
      end
