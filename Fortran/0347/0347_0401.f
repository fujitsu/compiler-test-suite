      program main
      parameter (l1=100)
      real      a(l1),tj(l1),tk(l1),tl(l1),tm(l1),tn(l1)
      real*8    q(l1),q2(l1),q3(l1)
      real      atj(l1),atk(l1),atl(l1),atm(l1),atn(l1)
      real*8    aq(l1)
      logical   error,error8
      real*8    xx,yy
      real      x , y
      error(x,y) = (abs(x-y).gt.2.0e-5)
      error8(xx,yy) = (abs(xx-yy).gt.2.0d-5)

      do 1  i=1,l1
        a(i)=100*cos(real(i))
        if(a(i).lt.0.0) then
           a(i)=-a(i)
        endif
        tj(i)=i
        tk(i)=i
        tl(i)=i
        tm(i)=i
        tn(i)=i
         q(i)=i
        q2(i)=i*i
        q3(i)=i-25.0
1     continue

      j=0
      k=0
      l=0
      m=0
      n=0

      do 10 i=1,l1
        if (a(i).gt.25.0) then
          j=j+1
          if (a(i).gt.50.0) then
            k=k+1
            tk(k)=a(i)
            q(i)=q2(i)+q3(i)
          else
            l=l+1
            tl(l)=a(i)
          endif
          tj(j)=a(i)
        else
          if(a(i).gt.75.0) then
            m=m+1
            tm(m)=a(i)
          else
            n=n+1
            tn(n)=a(i)
          endif
        endif
10    continue


      read(5,*) atj
      read(5,*) atk
      read(5,*) atl
      read(5,*) atm
      read(5,*) atn
      read(5,*) aq

      do i=1,l1
      if( error(atj(i),tj(i))) print *,tj(i),atj(i),abs(tj(i)-atj(i))
      if( error(atk(i),tk(i))) print *,tk(i),atk(i),abs(tk(i)-atk(i))
      if( error(atl(i),tl(i))) print *,tl(i),atl(i),abs(tl(i)-atl(i))
      if( error(atm(i),tm(i))) print *,tm(i),atm(i),abs(tm(i)-atm(i))
      if( error(atn(i),tn(i))) print *,tn(i),atn(i),abs(tn(i)-atn(i))
      if( error8(aq(i) , q(i))) print *,q(i),aq(i),abs(q(i)-aq(i))
      end  do
      print *,' PASS '
      end
