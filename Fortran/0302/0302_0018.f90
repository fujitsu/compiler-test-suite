   complex*8 a(10),b(10)/10*0/,d(10)
   real*8 c(2,10)/20*0/

   j = 1

   do i=1,10
      a(i) = i
      d(i) = cmplx(i,-i)
      c(1,i) = j
      c(2,i) = j+1
      j = j + 2
   enddo
   do i=1,10
      b(i) = c(1,i) + 6
   enddo
   write(6,*) b

   do i=1,10
      b(i) = c(1,i) + (3.,2.)
   enddo
   write(6,*) b

   do i=1,10
      b(i) = c(1,i) + d(i)
   enddo
   write(6,*) b
   end
