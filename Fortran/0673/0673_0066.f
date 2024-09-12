          write(6,100)
          ip=0
          call h19001()
          call h19002(ip)
          call h19003(ip)
          if(ip.ne.0) go to 10
          write(6,200)
          stop
   10     write(6,300) ip
          stop
  100     format(6x,'                 test (h0000190)'/
     *     11x,'direct-access read/write no i/o list'//)
  200     format(21x,'h0000190 ... ok'//6x,'end run unit')
  300     format(21x,'h0000190 ... ng(',i2,')'//6x,'end run unit')
          end
      subroutine h19001
          common /aaa/ a(5,5)
          f(x,y)=x**2.0+sqrt(y)-20*y+280701
          do 20 j=1,5
               do 10 i=1,5
                    a(i,j)=f(float(i*99+j*9),float(i*77+j*7))
   10          continue
   20     continue
          write(3,100) a
      rewind 3
          read(3,100) a
          return
  100     format(25f10.2)
          end
      subroutine h19002(ip)
          common /aaa/ a(5,5)
          dimension b(5,5)
          integer av1
          open(1,access='direct',recl=50,form='formatted')
          av1=1
          do 10 j=1,5
               write(1,100,rec=av1+1) (a(i,j),i=1,5)
               inquire(1,nextrec=av1)
   10     continue
          av1=1
          do 20 j=1,5
               read(1,101,rec=av1)
               inquire(1,nextrec=av1)
               read(1,100,rec=av1) (b(i,j),i=1,5)
               inquire(1,nextrec=av1)
   20     continue
          if(av1.ne.11) ip=ip+1
          do 40 j=1,5
               do 30 i=1,5
                    if(a(i,j).ne.b(i,j)) go to 50
   30          continue
   40     continue
          return
   50     ip=ip+1
          return
  100     format(5f10.2)
  101     format(5f10.2)
          end
      subroutine h19003(ip)
          common /aaa/ a(5,5)
          dimension b(5,5)
          integer av2
          open(2,access='direct',recl=50,form='formatted')
          av2=1
          do 10 j=1,5
               write(2,101,rec=av2)
               inquire(2,nextrec=av2)
               write(2,100,rec=av2) (a(i,j),i=1,5)
               inquire(2,nextrec=av2)
   10     continue
          if(av2.ne.11) ip=ip+1
          av2=1
          do 20 j=1,5
               read(2,100,rec=av2+1) (b(i,j),i=1,5)
               inquire(2,nextrec=av2)
   20     continue
          do 40 j=1,5
               do 30 i=1,5
                    if(a(i,j).ne.b(i,j)) go to 50
   30          continue
   40     continue
          return
   50     ip=ip+1
          return
  100     format(5f10.2)
  101     format(5f10.2)
          end
