      program main
       integer a(5,5),b(5,5),i,j,x,y,ll(25)
       integer c(5,5),d(5,5)
       data ll/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
     1         21,22,23,24,25/
        print *,'===== start ====='
        x=1
        do 20 i=1,5
          do 10 j=1,5
            a(i,j)=x
            x=x+1
  10      continue
  20    continue
        print *,'( a )'
        ji=0
        do 25 i=1,5
         do 25 jj=1,5
          ji=ji+1
          if(a(i,jj).ne.ll(ji)) then
            print *,'***** ng *****'
            print '(5i4)',(a(i,j),j=1,5)
            print *,'===== end ====='
            stop
          endif
  25    continue
        print *,'***** ok *****'
        do 60 i=1,5
          do 50 j=1,5
            call sub(i,j,*30,*40)
            b(i,j)=0
            go to 50
  30        b(i,j)=5
            go to 50
  40        b(i,j)=10
  50      continue
  60    continue
        print *,'( b )'
        do 70 i=1,5
         do 70 jj=1,5
          if(b(i,jj).ne.0) then
           if(b(i,jj).ne.5) then
            if(b(i,jj).ne.10) then
             print *,'***** ng *****'
             print '(5i4)',(b(i,j),j=1,5)
             print *,'===== end ====='
             stop
            endif
           endif
          endif
  70    continue
        print *,'***** ok *****'
        do 90 i=1,5
          do 80 j=1,5
            call esub(a,b,c,d,i,j)
  80      continue
  90    continue
        y=1
        call isub(b,y)
        y=2
        call isub(c,y)
        y=3
        call isub(d,y)
        print *,'===== end ====='
        stop
      end
      subroutine isub(p,y)
       integer p(5,5),y,l0(25)
       data l0/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
     1         21,22,23,24,25/
        if(y.eq.1) then
          print *,'( b )'
          do 92 i=1,5
           do 92 jj=1,5
            if(p(i,jj).ne.0) go to 99
  92      continue
          print *,'***** ok *****'
          go to 101
        elseif(y.eq.2) then
          ij=0
          print *,'( c )'
          do 93 i=1,5
           do 93 jj=1,5
            ij=ij+1
            if(p(i,jj).ne.l0(ij)) go to 99
  93      continue
          print *,'***** ok *****'
          go to 101
        else
          print *,'( d )'
          do 94 i=1,5
           do 94 jj=1,5
            if(p(i,jj).ne.0) go to 99
  94      continue
          print *,'***** ok *****'
          go to 101
        endif
  99    print *,'***** ng *****'
        do 100 i=1,5
          print '(5i4)',(p(i,j),j=1,5)
 100    continue
        print *,'===== end ====='
        stop
 101    return
      end
      subroutine esub(aa,bb,cc,dd,ee,ff)
       integer aa(5,5),bb(5,5),cc(5,5),dd(5,5),ee,ff
        cc(ee,ff)=5*(ee-1)+ff
        bb(ee,ff)=aa(ee,ff)-cc(ee,ff)
        if(bb(ee,ff).ne.0) then
          dd(ee,ff)=1
        else
          dd(ee,ff)=0
        endif
        return
      end
      subroutine sub(a,b,*,*)
       integer a,b,r
        if(a.eq.b) then
          r=0
        elseif(a.lt.b) then
          r=1
        else
          r=2
        endif
        return r
      end
