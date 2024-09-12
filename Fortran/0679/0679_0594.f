      parameter (n=100,m=100)
      logical   la(n),lb(n),lc(n)
      real      a(n),b(n),c(n)
      b=0
      do 1 i=1,n
        la(i)=mod(i,2).eq.0 .or. mod(i,2).eq.1
        lb(i)=mod(i,3).ne.0
        lc(i)=mod(i,7).ne.0
1     continue

      do 100 i=1,n
        if(la(i))then
          a(i)=-99999.0
          c(i)=0.0
          if(lb(i))then
            do 10 j=1,m
              a(i)=12345.0
10          continue
            if(lc(i))then
               b(i)=-1.0
            else
               b(i)=1.0
            endif
          else
            c(i)=99999.0
          endif
        endif
        c(i)=0.0
100   continue

      write(6,*) a
      write(6,*)
      write(6,*)
      write(6,*) b
      stop
      end
