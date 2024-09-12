          implicit integer (a-z)
          common av2
          dimension a(25)
          open(2,access='direct',recl=80,form='unformatted')
          do 10 i=1,25
               a(i)=i*1000+i*100+i*10+i
   10     continue
          write(6,100)
          write(2,rec=5) a(:20)
          write(2,rec=6) a(21:)
          ip=0
          inquire(2,nextrec=av2)
          if(av2.ne.7) ip=ip+1
          av2=5
          call h12001(a,25,ip)
          if(ip.ne.0) go to 20
          write(6,200)
          stop
   20     write(6,300) ip
          stop
  100     format('                  test ... h0000120'//)
  200     format('       h0000120 ... ok'//
     *           ' end run unit')
  300     format('       h0000120 ... ng (',i2,')'//
     *           ' end run unit')
          end
      subroutine h12001(x,k,ip)
          implicit integer (a-z)
          common av2
          dimension x(k),y(20),z(5)
          read(2,rec=av2) y
          inquire(2,nextrec=av2)
          read(2,rec=av2) z
          do 10 i=1,20
               if(x(i).ne.y(i)) go to 30
   10     continue
          do 20 i=1,5
               if(z(i).ne.x(20+i)) go to 30
   20     continue
          return
  30      ip=ip+1
          return
          end
