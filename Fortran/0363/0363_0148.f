      program main
      complex*8 a(65),b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) a
      write(6,*) res

 20   continue
      end

      subroutine init(a,b,res,n1)
      complex*8 a(65),b(65),res(65)

      do i=1,65
         a(i) = 0.
         if (i .gt. n1/2) then
            b(i) = cmplx(i,i)
            res(i) = cmplx(i,-i)
         else
            b(i) = cmplx(-i,i)
            res(i) = cmplx(-i,-i)
         endif
      enddo
      end

      subroutine test(a,b,n1)
      complex*8 a(65),b(65)
      
      do i=1,65
         a(i) =  conjg(b(i))
      enddo
      
      end
