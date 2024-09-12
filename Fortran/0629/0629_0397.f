      program main
      real real1(10)/1,2,3,4,5,6,7,8,9,10/,scom1
      common // scom1
      scom1 = -100
      do i=1,10
         real1(i) = i
      enddo

      do 200 j=1,10
       scom1=real1(j)
  200 continue
      write(6,*) scom1
      end
