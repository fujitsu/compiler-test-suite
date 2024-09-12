          implicit integer   (a-z)
          common av1
          integer a(10,10)
          ip=0
          write(6,100)
          open(1,access='direct',form='formatted',recl=50)
          do 20 j=1,10
               do 10 i=1,10
                    a(i,j)=i*j*99+99
   10          continue
   20     continue
          call h16001(a,10,10,ip)
          call h16002(a,10,10,ip,20,100,5,9,90,50)
          if(ip.ne.0) go to 30
          write(6,200)
          stop
   30     write(6,300) ip
          stop
  100     format(6x,'                 test (h0000160)'//)
  200     format(11x,'h0000160 ... ok'//6x,'end run unit')
  300     format(11x,'h0000160 ... ng(',i2,')'//6x,'end run unit')
          end
      subroutine h16001(x,m,n,ip)
          implicit integer   (a-z)
          common av1
          integer x(m,n),m,n
          av1=m*10+n*10-199
          write(1,100,rec=av1) x
          inquire(1,nextrec=av1)
          if(av1.ne.11) ip=ip+1
          return
  100     format(10i5)
          end
      subroutine h16002(x,m,n,ip,a,b,c,d,e,f)
          implicit integer   (a-z)
          common av1
          integer x(m,n),y(10,10),m,n
          read(1,100,rec=((a+20)/c)**3/16-f+d*c-a+(e-b)+4) y
          inquire(1,nextrec=av1)
          if(av1.ne.11) ip=ip+1
          do 20 j=1,m
               do 10 i=1,n
                    if(x(i,j).ne.y(i,j)) go to 30
   10          continue
   20     continue
          return
   30     ip=ip+1
          return
  100     format(10i5)
          end
