      program main
      logical(4) a(65),b(65),c(65),res(65)
      call init(a,b,c,res,65)
      do i=1,2
        call test(a,b,c,65)
      enddo
      do i=1,65
         if(c(i) .neqv. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,c,res,n1)
      logical(4)  a(n1),b(n1),c(n1),res(n1)

      do i=1,65
         c(i) = 0
         if (i .gt. n1/2) then
            a(i) = .TRUE.
            b(i) = .TRUE.
            res(i) = .FALSE.
         else
            a(i) = .TRUE.
            b(i) = .FALSE.
            res(i) = .TRUE.
         endif
      enddo
      end

      subroutine test(a,b,c,n1)
      logical(4) a(n1),b(n1),c(n1)
      
      do i=1,65
         c(i) = a(i) .neqv. b(i)
      enddo
      
      end
