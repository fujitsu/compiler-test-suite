c
       program   main
       real datax(11),datay(11),a,b,zansa,rst,limit
c
       parameter(n=11,limit=0.5)
       data datax/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,0.0/
       data datay/2.0,3.9,5.9,8.0,10.05,11.9,14.1,
     +            16.1,18.1,19.9,0.0/
c
       call lsq(datax, datay, n, a, b)
c
       write(6,'(2(2x,e15.4))') a,b
       do 10 i=1,n,1
            zansa = datay(i)-(a+b*datax(i))
            write(6,'(i3,3(2x,e14.3))') i,datax(i),datay(i),zansa
   10  continue
c
       do 20 i=1,n,1
           rst = datax(i)*2
           zansa=a+b*datax(i)
           if(abs(rst-zansa) .gt. limit) then
                write(6,*) ' test ===>  ng'
                goto 30
           endif
   20  continue
                write(6,*) ' test ===>  ok'
   30  end
c
       subroutine lsq(x,y,n,a,b)
c
       real x(n),y(n),a,b
c
       sumx = 0.0
       sumy = 0.0
       do 10 i=1,n,1
           sumx=sumx+x(i)
           sumy=sumy+y(i)
   10  continue
c
       xm = sumx/float(n)
       ym = sumy/float(n)
c
       sumxx = 0.0
       sumxy = 0.0
       do 20 i=1,n,1
           sumxx = sumxx+(x(i)-xm)**2
           sumxy = sumxy+(x(i)-xm)*(y(i)-ym)
   20  continue
       b = sumxy/sumxx
       a = ym-b*xm
       return
       end
