      program main
      real(4) a(65),b(65)
      integer(4) la(65),res(65)
      call init(a,b,la,res,65)
      do i=1,2
        call test(a,b,la,65)
      enddo
      do i=1,65
         if(la(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,la,res,n1)
      real(4)  a(n1),b(n1)
      integer(4) la(65),res(n1)

      do i=1,65
         a(i) = i
         la(i) = .FALSE.
         if (i .gt. n1/2) then
            b(i) = i + 1.0
            res(i) = .FALSE.
         else
            b(i) = i - 1.0
            res(i) = .TRUE.
         endif
      enddo
      end

      subroutine test(a,b,la,n1)
      real(4) a(n1),b(n1)
      integer(4) la(65)
      
      do i=1,65
         la(i) = .not. (b(i) .gt. a(i))
      enddo
      
      end
