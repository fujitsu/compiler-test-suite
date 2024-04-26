      call c8
      call c16
      end

      subroutine c8
      complex  aa(10),bb(10),cc(10)
      real     x(10)
      j=1
      do i=1,10
         aa(i) = cmplx(i-2,i-3)
         bb(i) = cmplx(j,j+1)
         cc(i) = cmplx(j+10,j+11)
         x(i) = i
         j=j+2
      enddo

      do i=1,10
         aa(i) = 2+bb(i)
         cc(i) = aa(i)+(3.,4.)
      enddo
      write(6,*) aa
      write(6,*) bb
      write(6,*) cc

      do  i=1,10
         bb(i) = cc(i)+3
         x(i) = bb(i)
      enddo

      WRITE(6,*) bb
      WRITE(6,*) x

      do  i=1,10
         bb(i) = aa(i)+cc(i)
         x(i) = bb(i)
      enddo
      WRITE(6,*) bb
      WRITE(6,*) cc
      WRITE(6,*) x
      end
         
      subroutine c16
      complex*16  aa(10),bb(10),cc(10)
      real*8     x(10)
      j=1
      do i=1,10
         aa(i) = dcmplx(i-2,i-3)
         bb(i) = dcmplx(j,j+1)
         cc(i) = dcmplx(j+10,j+11)
         x(i) = i
         j=j+2
      enddo

      do i=1,10
         aa(i) = 2+bb(i)
         cc(i) = aa(i)+(3.,4.)
      enddo
      write(6,*) aa
      write(6,*) bb
      write(6,*) cc

      do  i=1,10
         bb(i) = cc(i)+3
         x(i) = bb(i)
      enddo

      WRITE(6,*) bb
      WRITE(6,*) x

      do  i=1,10
         bb(i) = aa(i)+cc(i)
         x(i) = bb(i)
      enddo
      WRITE(6,*) bb
      WRITE(6,*) cc
      WRITE(6,*) x
      end

         
