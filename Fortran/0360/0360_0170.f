      real*4  r4(10,2)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
     +                 17,18,19,20/
      real*8  r8(10,2)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
     +                 17,18,19,20/
      complex*8 c8(10)
      complex*16 c16(10)

      do i=1,10
         c16(i)=cmplx(r4(i,1),r4(i,2))
      enddo

      write(6,*) c16
      c16 = 0
      do i=1,10
         c16(i)=cmplx(r4(i,1),r4(i,2),kind=4)
      enddo

      write(6,*) c16
      c16 = 0
      do i=1,10
         c16(i)=cmplx(r4(i,1),r4(i,2),kind=8)
      enddo

      write(6,*) c16
      c16 = 0
      do i=1,10
         c16(i)=dcmplx(r4(i,1),r4(i,2))
      enddo

      write(6,*) c16
      c16 = 0
      do i=1,10
         c16(i)=cmplx(r8(i,1),r8(i,2))
      enddo

      write(6,*) c16
      c16 = 0
      do i=1,10
         c16(i)=cmplx(r8(i,1),r8(i,2),kind=4)
      enddo

      write(6,*) c16
      c16 = 0
      do i=1,10
         c16(i)=cmplx(r8(i,1),r8(i,2),kind=8)
      enddo

      write(6,*) c16
      c16 = 0
      do i=1,10
         c16(i)=dcmplx(r8(i,1),r8(i,2))
      enddo
      write(6,*) c16
      end
