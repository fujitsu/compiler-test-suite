      program main
       integer  a(5,5),x,r,i,j,b(5,5)
        integer  pi,pj,pr
        pointer (ppi,pi), (ppj,pj), (ppr,pr)
        ppi=loc(i)
        ppj=loc(j)
        ppr=loc(r)
       print *,'===== start ====='
       x=0
       do 20 i=1,5
         do 10 j=1,5
           if(i.eq.j) then
             a(i,j)=pi*10
           else
             a(i,j)=x
           endif
           x=x+1
   10    continue
   20  continue
       do 25 i=1,5
         do 25 j=1,5
           x=a(pi,pj)
           b(i,j)=x
   25  continue
       call isub1(pr,a,b)
       if(r.ne.0) go to 70
         pi=1
   50    if ( pi.eq.6 ) goto 51
           do 30 j=1,5
             a(i,j)=a(pi,pj)-1
   30      continue
           pj=1
   40      if ( pj.eq.6 ) goto 41
             a(pi,pj)=a(pi,pj)+1
             j=j+1
           goto 40
   41      continue
           call isub1(r,a,b)
           if(pr.ne.0) go to 70
           i=i+1
         goto 50
   51  continue
       do 60 i=1,5
         if(pi.eq.1) then
           call esub(a)
         else
           call esube(a,pi)
         endif
   60  continue
       print *,'***** ok *****'
   70  print *,'===== end ====='
       stop
      end
       subroutine isub1(r,a,b)
        integer    r,m,a(5,5),b(5,5)
        integer  pi,pj
        character  ch*3,str*70
        character  pch*3,pstr*70
        pointer (ppi,pi), (ppj,pj)
        pointer	(ppch,pch),(ppstr,pstr)
        ppch=loc(ch)
        ppstr=loc(str)
        ppi=loc(i)
        ppj=loc(j)
        do 90 ii1=1,5
          do 80 ii2=1,5
            if(b(ii2,ii1).ne.a(ii2,ii1)) then
              print *,'***** ng *****'
              print *,'  a(',ii2,',',ii1,')=',a(ii2,ii1)
              print *,'  b(',ii2,',',ii1,')=',b(ii2,ii1)
              r=1
              go to 101
            endif
   80     continue
   90   continue
        r=0
        return
 101    do 105 i=1,70
          pstr(pi:pi)=' '
 105    continue
        do 120 i=1,5
          if(pi.eq.1) then
            pstr(1:5)=' a = '
          endif
          m=6
          do 110 j=1,5
            call isub2(ch,a(i,j))
            pstr(m:m+3)=ch//','
            if(j.eq.5) then
              str(m+3:m+3)=' '
            endif
            m=m+4
  110     continue
          print *,str
  120   continue
        print *,' '
        return
       end
       subroutine isub2(ch,b)
        character*3  ch
        character    tbl(0:9)
        integer      b,y(5),s(5),w,ab
        pointer (ppb,pb)
        ppb=loc(ab)
        data tbl/'0','1','2','3','4','5','6','7','8','9'/
        pb=b
        s(1)=pb/100
        y(1)=mod(pb,100)
        b=pb
        w=b-100*s(1)
        s(2)=w/10
        y(2)=mod(w,10)
        s(3)=w-10*s(2)
        do 200 i=1,3
          ch(i:i)=tbl(s(i))
  200   continue
        return
       end
      subroutine esub(ary)
       integer ary(5,5),i,j,c(25)
       data c/10,1,2,3,4,5,20,7,8,9,10,11,30,13,14,15,16,17,40,19,20,
     1        21,22,23,50/
       do 300 k=1,5
         if(c(k).ne.ary(1,k)) then
           print *,'***** ng *****'
           print '(a7,i4)',' (1) = ',(ary(1,j),j=1,5)
           stop
         endif
  300  continue
       go to 500
      entry esube(ary,i)
       kk=(i-1)*5+1
       do 400 k=1,5
        if(c(kk).ne.ary(i,k)) then
         print *,'***** ng *****'
         print '(a2,i1,a4,i4)',' (',i,') = ',(ary(i,j),j=1,5)
         stop
        endif
        kk=kk+1
  400  continue
  500  return
      end
