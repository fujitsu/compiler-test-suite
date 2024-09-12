      program main
      real a(10),b(10),c(10)
      data a,b,c/30*1/
      integer  n/10/,k
      do 10 i=1,n
        a(i)= b(i)
        call dum(k)
        c(i) = a(i) + c(i)  + k
   10 continue
      write(6,*) a,b,c
      end
      subroutine dum(k)
      integer  k
      k=3
      return
      end
