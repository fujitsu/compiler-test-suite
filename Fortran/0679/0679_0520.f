      program main
      real a(300),b(300),max/0/,dif/0/,c(300),d(300)
      real aa(300),bb(300)
      integer n/100/,k/1/,idx
      data a,b,c,d/1200*1/,idx/0/
      data aa,bb/600*1/

       do 10 i=2,n
        a(i)=i+b(i)+a(i-1)
        aa(i) = aa(i-1)
        bb(i) = bb(i)-bb(i-1)
        c(i+1) = b(i)+sqrt(c(i-1))+a(i)
   10  continue
       write(6,*) 'no-1',a,aa,bb,c

       call dum(a,b,c,d)
       do 20 i=2,n
        a(i) = a(i+1)
        k=k+1
        b(k) = b(k)+a(i-1)
        d(i)=d(i+1)+d(k)
        c(k+1) = sqrt(c(k-1)) +b(k)
   20  continue
       write(6,*) 'no-2',a,b,c,d,k

       call dum(a,b,c,d)
       do 30 i=2,n
        a(i-1) = a(i)
        c(i) = b(i)+a(i)
        dif= b(i)-max
        if(dif.gt.0) then
          max = b(i)
          idx=i
        endif
        c(i+1) = sqrt(c(i-1))
   30  continue
       write(6,*) 'no-3',a,c,max,idx
       end
       subroutine dum(a,b,c,d)
        real*4 a(300),b(300),c(300),d(300)
        do 10 i=1,300
         a(i)=1
         b(i)=1
         c(i)=1
   10    d(i)=1
        return
       end
