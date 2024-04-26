      real*8 a(20)/20*0/,b(2,20)
      real*4 c(20)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,
     +             18,19,20/
      real*4 d(20)/10,9,8,7,6,5,4,3,2,1,20,19,18,17,16,15,14,
     +             13,12,11/
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/

      do i=1,20
        b(1,i) = -i
        b(2,i) = i+100
      enddo
      write(6,*) b

      do i=1,20,2
        b(1,i) = c(i) + 30
        b(2,i) = d(i) - 4
      enddo
      write(6,*) b

      do i=1,20,list(2)
        b(1,i) = c(i) + 100
        b(2,i) = d(i) - 200
      enddo
      write(6,*) b

      do i=1,20
        b(1,list(i)) = -i
        b(2,list(i)) = i+100
      enddo
      write(6,*) b

      do i=1,20,2
        b(1,list(i)) = c(i) + 30
        b(2,list(i)) = d(i) - 40
      enddo
      write(6,*) b

      do i=1,20,list(3)
        b(1,list(i)) = c(i) + 100
        b(2,list(i)) = d(i) - 200
      enddo
      write(6,*) b
      end
