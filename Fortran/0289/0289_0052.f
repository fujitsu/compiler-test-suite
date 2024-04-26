       program main
        integer a,b,c,d,e,r(10),i,rd(10),x,y,z
        data r/0,1,2,3,4,5,6,7,8,9/
        data i/1/
        data rd/5,11,17,23,29,5,6,7,8,9/
   10   continue
        a=i+r(1)
        b=i*2+r(2)
        c=i*3+r(3)
        x=i+r(1)
        y=i*2+r(2)
        z=i*3+r(3)
        d=i*4+r(4)
        e=i*5+r(5)
        i=i+1
        if(i.le.5) go to 10
        if(a.ge.r(1)) then
          j=a
          a=r(1)
          r(1)=j
        endif
        if(b.ge.r(2)) then
          j=b
          b=r(2)
          r(2)=j
        endif
        if(c.ge.r(3)) then
          j=c
          c=r(3)
          r(3)=j
        endif
        if(d.ge.r(4)) then
          j=d
          d=r(4)
          r(4)=j
        endif
        if(e.ge.r(5)) then
          j=e
          e=r(5)
          r(5)=j
        endif
        call sub(rd,r,*99)
        if(r(1).ne.x) then
          print *,'*** x ng *** x=',x
          print *,'===== end ====='
          stop
        endif
        if(r(2).ne.y) then
          print *,'*** y ng *** y=',y
          print *,'===== end ====='
          stop
        endif
        if(r(3).ne.z) then
          print *,'*** z ng *** z=',z
          print *,'===== end ====='
          stop
        endif
        print *,'***** ok *****'
        stop
   99   print *,'***** ng *****'
        stop
      end
      subroutine sub(rd,r,*)
        integer rd(10),r(10),rtn
        rtn=0
        do 100 i=1,10
          if(rd(i).ne.r(i)) then
            print *,'*** r(',i,') ng *** r(',i,')=',r(i)
            rtn=1
          endif
 100    continue
        return rtn
      end
