      program main
      complex(4) a(65),b(65)
      real(4) c(65),dx,dy,res(65)
      call init(a,b,c,dx,dy,res,65)
      do i=1,2
        call test(a,b,c,dx,dy,65)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,c,dx,dy,res,n1)
      complex(4) a(65),b(65)
      real(4) c(65),dx,dy,res(65)

      do i=1,65
         a(i) = i
         b(i) = 0
         c(i) = i
         dy = 0
         dx = 0
         res(i) = i
      enddo
      end

      subroutine test(a,b,c,dx,dy,n1)
      complex(4) a(n1),b(n1)
      real(4) c(n1),dx,dy
      
      do i=1,65
         dy = imag(a(i))
         dx = c(i)
         b(i) = dcmplx(dx, dy)
      enddo
      
      end
