          implicit integer (a-b)
          common av1
          dimension a(10)
          do 10 i=1,10
               a(i)=i*900+i*90+i*9
   10     continue
          write(6,200)
          open(1,access='direct',form='formatted',recl=40)
          write(1,100,rec=5) a
          ip=0
          inquire(1,nextrec=av1)
          if(av1.ne.6) ip=ip+1
          av1=5
          call h11001(a,10,ip)
          if(ip.ne.0) go to 20
          write(6,300)
          stop
   20     ip=ip+1
          write(6,400) ip
          stop
  100     format(10i4)
  200     format(' ************************************************'/
     *           ' *                  test ... h0000110           *'/
     *           ' *  test for formatted direct-access read/write *'/)
  300     format(' *          h0000110 ... ok                     *'/
     *           ' * end run unit ... error test22(end of record)?*'/
     *           ' ************************************************')
  400     format(' *          h0000110 ... ng (',i2,')',11x,'     *'/
     *           ' * end run unit ... error test22(end of record)?*'/
     *           ' ************************************************')
          end
      subroutine h11001(x,k,ip)
          implicit integer (a-z)
          common av1
          dimension x(k),y(15)
          data y/15*0/
          read(1,100,rec=av1) y
          do 10 i=1,k
               if(x(i).ne.y(i)) go to 30
   10     continue
          j=k+1
          do 20 i=j,15
               if(y(i).ne.0) go to 30
   20     continue
          return
   30     ip=ip+1
          return
  100     format(15i4)
          end
