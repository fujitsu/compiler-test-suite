      program main
      dimension y(1000)
      common i
      integer*4 i,sum
      sum=0
      i=-10
      iii=i*2
  100 if(iii.lt.0) go to 200
      sum=sum+1
        x=iii*4
        y(iii+1)=sqrt(x)
        if(y(iii+1).le.10.0) then
          iii=iii+1
          go to 100
        else
          do 110 jjj=1,iii
  110       write(6,*) y(jjj)
        endif

  200 call sub
      if(i.le.10) go to 100
      if(i.eq.11) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        write(6,*) i
      endif
      end

      subroutine sub
      common j
      integer*4 j
        j=j+1
      end
