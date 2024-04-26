      program main
      complex*8 i1a(65),i1b(65),i1c(65)
      call init(i1a,i1b,i1c,65)
      do i=1,2
        call test(i1a,i1b,i1c,65)
      enddo
      do i=1,65-2
         if(i1a(i) .ne. cmplx(i-54,i-36)) goto 10
      enddo



      if(i1a(i) .ne. cmplx(7,26)) goto 10

      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) i1a

 20   continue
      end

      subroutine init(i1a,i1b,i1c,n1)
      complex*8  i1a(n1),i1b(n1),i1c(n1)

      do i=1,65
        i1a(i) = cmplx(i-60,i-40)
        i1b(i) = 0
        i1c(i) = cmplx(2,1)
      enddo
      end

      subroutine test(i1a,i1b,i1c,n1)
      complex*8 i1a(n1),i1b(n1),i1c(n1)
      
      do i=1,65-1
        i1a(i) = i1a(i+1) + i1c(i)
      enddo
      
      end



