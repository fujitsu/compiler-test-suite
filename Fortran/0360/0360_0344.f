      real*4 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      real*4 d(10)

      do i=1,10
         a(i) = 1/sqrt(b(i))
         d(i) = sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d


      do i=1,10
         a(i) = sqrt(b(i))
         d(i) = 2/sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d


      do i=1,10
         a(i) = 1/sqrt(b(i))
         d(i) = 2/sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d


      do i=1,10
         a(i) = 2/sqrt(b(i))
         d(i) = 1/sqrt(b(i))
      enddo
      write(6,*) a
      write(6,*) d
      end
