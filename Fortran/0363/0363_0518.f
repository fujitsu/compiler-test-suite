      program main
      logical(2) a(65),b(65),c(65),res(65)
      call init(a,b,c,res,65)
      do i=1,2
        call test(a,b,c,65)
      enddo
      do i=1,65
         if(a(i) .neqv. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,c,res,n1)
      logical(2)  a(n1),b(n1),c(n1),res(n1)

      do i=1,65
         a(i) = .false.
         b(i) = .false.
         c(i) = .true.
         res(i) = 0
      enddo

      do i=1,65,2
         b(i) = .true.
         res(i) = .true.
      enddo
      end

      subroutine test(a,b,c,n1)
      logical(2) a(n1),b(n1),c(n1)
      
      do i=1,65,2
         a(i) = b(i) .and. c(i)
      enddo
      
      end
