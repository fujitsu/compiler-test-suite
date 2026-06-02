      program main

      real a(30),b(30),max/0/,dif/0/,c(30),d(30)
      integer n/10/,k/1/,idx
      data a,b,c,d/120*1/,idx/0/

       call dum(a,b,c,d)

       do 30 i=2,10
        a(i-1) = a(i)
        c(i) = b(i)+a(i)
        dif= b(i)-max
        if(dif.gt.0) then
          max = b(i)
          idx=i
        endif
   30  continue
       write(6,*) a,c,max,idx
       end
       subroutine dum(a,b,c,d)
        real*4 a(30),b(30),c(30),d(30)
        do 10 i=1,30
         a(i)=1
         b(i)=2
         c(i)=3
   10    d(i)=4
        return
       end
