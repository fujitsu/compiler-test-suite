      complex*8 a(20)/20*0/,b(2,20)
      complex*16 c(20)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,
     +             18,19,20/
      complex*16 d(20)/10,9,8,7,6,5,4,3,2,1,20,19,18,17,16,15,14,
     +             13,12,11/
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/

      do i=1,20
         c(i) = cmplx(i,3)
         d(i) = cmplx(real(d(i)),i)
      enddo

      do i=1,20
        b(1,i) = cmplx(-i,i+2)
        b(2,i) = cmplx(i+10,i+20)
      enddo
      write(6,*) b

      do i=1,20,2
        b(1,i) = c(i) + cmplx(30,3)
        b(2,i) = d(i) - cmplx(4,4)
      enddo
      write(6,*) b

      do i=1,20,list(2)
        b(1,i) = c(i) + cmplx(100,2)
        b(2,i) = d(i) - cmplx(2,200)
      enddo
      write(6,*) b

      do i=1,20
        b(1,list(i)) = cmplx(-i,i+2)
        b(2,list(i)) = cmplx(i+10,i+20)
      enddo
      write(6,*) b

      do i=1,20,2
        b(1,list(i)) = c(i) + cmplx(30,20)
        b(2,list(i)) = d(i) - cmplx(40,10)
      enddo
      write(6,*) b

      do i=1,20,list(3)
        b(1,list(i)) = c(i) + cmplx(100,3)
        b(2,list(i)) = d(i) - cmplx(3,200)
      enddo
      write(6,*) b
      end
