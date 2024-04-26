      real*8 b(10)/1,2,3,4,5,6,7,8,9,10/,aa
      real*4 c(10)/1,2,3,4,5,6,7,8,9,10/,xx
      real*8 d(10,2)/1,2,3,4,5,6,7,8,9,10,
     +               11,12,13,14,15,16,17,18,19,20/
      real*4 e(10,2)/1,2,3,4,5,6,7,8,9,10,
     +               11,12,13,14,15,16,17,18,19,20/
      do i=1,8
         aa = dcmplx(b(i),b(i))
      enddo
      write(6,*) aa

      do i=1,8
         xx = cmplx(c(i),c(i))
      enddo
      write(6,*) xx

      do i=1,8
         aa = dcmplx(d(i,1),d(i,2))
      enddo
      write(6,*) aa

      do i=1,8
         xx = cmplx(e(i,1),e(i,1))
      enddo
      write(6,*) xx
      end
