      complex*8 a(10)/10*0/
      real*4 b(10,2)/1,2,3,4,5,6,7,8,9,10,
     +               11,12,13,14,15,16,17,18,19,20/
      complex*8 res(10)/(1.,11.),(2.,12.),(3.,13.),(4.,14.),
     +  (5.,15.),(6.,16.),(7.,17.),(8.,18.),(9.,19.),(10.,20.)/
      do i=1,10
         a(i)=cmplx(b(i,1),b(i,2))
      enddo

      do i=1,10
         if (a(i).ne.res(i)) goto 10
      enddo
      write(6,*) 'OK'
      goto 20
 10   write(6,*) 'NG'
 20   continue
      end