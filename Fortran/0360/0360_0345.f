      real*4 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      real*4 d(10),r1,r2
      r1 = func(1.)
      r2 = func(2.)

      do i=1,10
         a(i) = r1/sqrt(b(i))
         d(i) = sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d


      do i=1,10
         a(i) = sqrt(b(i))
         d(i) = r2/sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d


      do i=1,10
         a(i) = r1/sqrt(b(i))
         d(i) = r2/sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d


      do i=1,10
         a(i) = r2/sqrt(b(i))
         d(i) = r1/sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d
      end

      function func(rr)
      func = rr
      return
      end
