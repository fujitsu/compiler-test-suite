      complex*8 a(20)/20*0/
      complex*8 b(20)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,
     +             18,19,20/
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/

      do i=1,20
         b(i) = cmplx(i,3)
      enddo

      do i=1,20
         a(i) = cmplx(-i,-i)
      enddo
      write(6,*) a

      do i=1,20,2
         a(i) = b(i)+cmplx(2,6)
      enddo
      write(6,*) a

      do i=1,20,list(1)
         a(i) = b(i)+cmplx(30,10)
      enddo
      write(6,*) a

      do i=1,20
        a(list(i)) = cmplx(-i,-i)
      enddo
      write(6,*) a

      do i=1,20,2
        a(list(i)) = b(i) + cmplx(100,30)
      enddo
      write(6,*) a

      do i=1,20,list(1)
        a(list(i)) = b(i) + cmplx(1000,100)
      enddo
      write(6,*) a
      end
