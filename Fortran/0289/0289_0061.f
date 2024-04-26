       program main
      integer a(10)
       integer aa(10)
      integer igb(7),g
      integer ilb(7),l
      integer aigb(7), ailb(7)
       pointer (pa,a),(pigb,igb),(pilb,ilb),(pig,ig),(pil,il)
      data aigb,ailb/7*0,7*0/
        pa=loc(aa)
        pigb=loc(aigb(1))
        pilb=loc(ailb(1))
        pig=loc(iag)
        pil=loc(ial)
      do 10 i=1,10
       aa(i)=-1**i*i**2
   10  continue
      i=1
      ig=0
      il=0
      do 20 while(a(i).le.50
     1       .and.aa(i).ge.-50)
       if (g(a(i),igb,ig).ge.8
     1 .or.l(a(i),ilb,il).ge.8) go to 30
       i=i+1
   20  continue
   30 continue
      if (i.eq.8) then
       print *,'*** ok ***',i,ig,il
       print *,a
       print *,igb
       print *,ilb
       stop
      else
       print *,'*** ng ***',i,ig,il
       end if
      end
      integer function g(a,b,i)
      integer a,b(7),i
      if (a) 20,10,10
   10 continue
      i=i+1
      b(i)=a
   20 continue
      g=i
      return
      end
      integer function l(a,b,i)
      integer a,b(7),i
      if (a) 10,20,20
   10 continue
      i=i+1
      b(i)=a
   20 continue
      l=i
      return
      end
