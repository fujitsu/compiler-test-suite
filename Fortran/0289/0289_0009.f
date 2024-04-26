      program main
       character*21 wk(6),y
       integer      mm(12),r
       common  wk
       data y/' su mo tu we th fr sa'/
       data mm/1,2,3,4,5,6,7,8,9,10,11,12/
       print *,'===== start ====='
        do 100 i=1,12
          call isub(mm(i),r)
          do 10 j=1,6
            wk(j)='                     '
  10      continue
          call esub(mm(i),r)
          call chk(wk,mm(i),y)
 100    continue
        print *,' '
        print *,'***** ok *****'
        stop
      end
       subroutine isub(mn,rv)
        integer mn,rv,w,k,mtbl(12),mmt(12)
        common  /mnmx/ mmt
        data mtbl/31,28,31,30,31,30,31,31,30,31,30,31/
         do 140 l=1,12
           mmt(l)=mtbl(l)
  140    continue
         if(mn.eq.1) then
           rv=0
           return
         endif
         w=0
         do 150 k=1,mn-1
           w=mtbl(k)+w
  150    continue
         rv=mod(w,7)
         return
       end
      subroutine esub(m,s)
        integer s,dw,d,i,mmax(12),st
        character*21 ctb(6)
        character*3  day
        character    cnm(0:9)
        common ctb
        common /mnmx/ mmax
        data cnm/'0','1','2','3','4','5','6','7','8','9'/
        st=3*s+1
        d=1
        do 300 i=1,6
          do 200 while(st.le.21)
            if(d.lt.10) then
              day='  '//cnm(d)
            else if(d.lt.20) then
              dw=mod(d,10)
              day=' 1'//cnm(dw)
            else if(d.lt.30) then
              dw=mod(d,10)
              day=' 2'//cnm(dw)
            else
              dw=mod(d,10)
              day=' 3'//cnm(dw)
            endif
            ctb(i)(st:st+2)=day
            st=st+3
            d=d+1
            if(d.gt.mmax(m)) go to 400
  200     continue
          st=1
  300   continue
  400   return
      end
      subroutine chk(da,mo,y)
       character*21 da(6),y
       integer mo,tb(12)
       data tb/3,12,12,21,6,15,21,9,18,3,12,18/
       do 900 i=1,tb(mo)-1
         if(da(1)(i:i).ne.' ') go to 950
  900  continue
       if(da(1)(tb(mo):tb(mo)).eq.'1') go to 1100
  950  print *,' '
       print *,'*** ng *** month=',mo
       print *,'           ',mo
       print *,y
       do 1000 j=1,6
         print *,da(j)
 1000  continue
       print *,'===== end ====='
       stop
 1100  print *,'*** ',mo,' ** ok ***'
       return
      end
