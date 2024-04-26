      program main
      complex(8) a(65),b(65),res
      call init(a,b,65)
      do i=1,2
        call test(a,b,65)
      enddo




      res = cmplx(2178,-858)


      if((real(b(1))- real(res)) .gt. 0.005) goto 10
      if((imag(b(1))- imag(res)) .gt. 0.005) goto 10

      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) b(1)
      write(6,*) res

 20   continue
      end
 
      subroutine init(a,b,n1)
      complex(8)  a(n1),b(n1)

      do i=1,65
         b(i) = cmplx(0.0)
         a(i) = cmplx(i,20-i)
      enddo
      end

      subroutine test(a,b,n1)
      complex(8) a(n1),b(n1)
      
      do i=1,65,2
         b(1) = b(1) + a(i)
      enddo
      
      end
