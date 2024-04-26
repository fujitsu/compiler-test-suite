      real*8 a(20)/20*0/,b(20,20)
      real*4 c(20,20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/


      do i=1,20
         do j=1,20
            c(j,i) = j+i*10
         enddo
      enddo



      do j=1,20
      do i=1,20
        b(j,i) = -i
      enddo
      enddo
      write(6,*) b



      do j=1,20
      do i=1,20,2
        b(j,i) = c(j,i) + 30
      enddo
      enddo
      write(6,*) b



      do j=1,20
      do i=1,20,list(1)
        b(j,i) = c(j,i) + 100
      enddo
      enddo
      write(6,*) b



      do j=1,20
      do i=1,20
        b(j,list(i)) = -i
      enddo
      enddo
      write(6,*) b



      do j=1,20
      do i=1,20,2
        b(j,list(i)) = c(j,list(i)) + 30
      enddo
      enddo
      write(6,*) b



      do j=1,20
      do i=1,20,list(1)
        b(j,list(i)) = c(j,list(i)) + 100
      enddo
      enddo
      write(6,*) b

      end
