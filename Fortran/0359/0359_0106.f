      call sub1
      call sub2
      call sub3
      call sub4
      end

      subroutine sub1
      complex*16 c(10),d(10),e(10)
      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =dcmplx(dreal(c(i)), dimag(d(i)))
      enddo
      write(6,*) e
      end

      subroutine sub2
      complex*16 c(10),d(10),e(10)


      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =dcmplx(dimag(c(i)), dimag(d(i))) 
      enddo
      write(6,*) e
      end

      subroutine sub3
      complex*16 c(10),d(10),e(10)


      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =dcmplx(dreal(c(i)), dreal(d(i))) 
      enddo
      write(6,*) e
      end

      subroutine sub4
      complex*16 c(10),d(10),e(10)
      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =dcmplx(dimag(c(i)), dreal(d(i)))
      enddo
      write(6,*) e
      end

