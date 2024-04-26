      real*4  r4(10)/1,2,3,4,5,6,7,8,9,10/
      real*8  r8(10)/1,2,3,4,5,6,7,8,9,10/
      complex*8 c8(10)
      complex*16 c16(10)

      do i=1,10
         c8(i)=cmplx(r4(i),r4(i))
      enddo

      write(6,*) c8
      c8 = 0
      do i=1,10
         c8(i)=cmplx(r4(i),r4(i),kind=4)
      enddo

      write(6,*) c8
      c8 = 0
      do i=1,10
         c8(i)=cmplx(r4(i),r4(i),kind=8)
      enddo

      write(6,*) c8
      c8 = 0
      do i=1,10
         c8(i)=dcmplx(r4(i),r4(i))
      enddo

      write(6,*) c8
      c8 = 0
      do i=1,10
         c8(i)=cmplx(r8(i),r8(i))
      enddo

      write(6,*) c8
      c8 = 0
      do i=1,10
         c8(i)=cmplx(r8(i),r8(i),kind=4)
      enddo

      write(6,*) c8
      c8 = 0
      do i=1,10
         c8(i)=cmplx(r8(i),r8(i),kind=8)
      enddo

      write(6,*) c8
      c8 = 0
      do i=1,10
         c8(i)=dcmplx(r8(i),r8(i))
      enddo
      write(6,*) c8

      end
