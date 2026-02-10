      program main
       character   cc*30,cname*20,cl*13,cname2*20
       integer     level
        integer, target :: al
        pointer (pl,level)
       equivalence (cc(9:9),cname(1:1))
       data cc/'i''m in ''                      '/
       data cl/'scr level is '/
        pl=loc(al)
       print *,'===== start ====='
       level=0
       cname='main program''.'
       print *,cc
       print *,cl,level
       do 100 i=1,3
         if(i.eq.1) al=level+1
         if(i.eq.3) then
           if(level.ne.1) then
             print *,'*** level ng *** level=',al
             print *,' ***(i=',i,')'
             print *,' ***',cl,level
             print *,'===== end ====='
             stop
           endif
           call isub1(level,cc,cl,cname)
           print *,'return by isub1'
         endif
         do 10 j=1,5
           if(j.eq.1) level=al+1
           if(i.eq.2) then
             if(j.eq.5) then
               if(level.ne.2) then
                 print *,'*** level ng *** level=',level
                 print *,' ***(i,j)=(',i,',',j,')'
                 print *,' ***',cl,level
                 print *,'===== end ====='
                 stop
               endif
               cname2=cname
               call esub1(cc,level,cname2,cl)
               cname=cname2
             endif
           endif
   10    continue
         level = al-1
         do 30 k=1,6
           if(k.eq.1) level=al+1
           if(i.eq.1) then
             if(k.eq.3) then
               if(level.ne.2) then
                 print *,'*** level ng *** level=',level
                 print *,' ***(i,k)=(',i,',',k,')'
                 print *,' ***',cl,level
                 print *,'===== end ====='
                 stop
               endif
               cname2=cname
               call esub1(cc,level,cname2,cl)
               cname=cname2
             endif
           elseif(k.eq.1) then
             do 20 l=1,2
               if(l.eq.1) then
                 level=level+1
                 if(level.ne.3) then
                   print *,'*** level ng *** level=',level
                   print *,' ***(i,k,l)=(',i,',',k,',',l,')'
                   print *,' ***',cl,level
                   print *,'===== end ====='
                   stop
                 endif
                 call isub2(al,cc,cl,cname)
               endif
   20        continue
           al=level-1
           endif
   30    continue
         level=al-1
  100  continue
       level=al-1
       if(level.ne.0) then
         print *,'***** level ng ***** level=',level
         print *,'===== end ====='
         stop
       endif
       print *,'***** -- ok -- *****'
       print *,'===== end ====='
       stop
      end
        subroutine isub1(lvl,cc,cl,cname)
         character*(*) cc,cl,cname
         integer lvl
          cname='                    '
          cname='subroutine isub1''.'
          if(lvl.ne.1) then
            print *,'*** level ng *** level=',lvl
            print *,' ***',cc
            print *,' ***',cl,lvl
            print *,'===== end ====='
            stop
          endif
          do 200 m=1,4
            if(m.eq.1) lvl=lvl+1
            if(lvl.ne.2) then
              print *,'*** level ng *** level=',lvl
              print *,' ***',cl,lvl
            print *,'===== end ====='
              stop
            endif
  200     continue
          lvl=lvl-1
          call esube(cc,lvl,cname,cl)
          return
        end
        subroutine isub2(lvl,cc,cl,cname)
         character  cn*28
         character*(*) cc,cl,cname
         integer lvl
          cname='                    '
          cname='subroutine isub2''.'
          cn='isub2 is internal procedure.'
          if(lvl.ne.3) then
            print *,'*** level ng *** level=',lvl
            print *,' ***',cc
            print *,' ***',cn
            print *,' ***',cl,lvl
            print *,'===== end ====='
            stop
          endif
          return
        end
      subroutine esub1(cc,lv,cn,cl)
       character cc*(*),cn*(*),cl*(*)
       integer lv
        print *,'entrance is esub1.'
        if(lv.ne.2) then
          print *,'*** level ng *** level=',lv
          print *,' ***',cc(1:8),cn
          print *,' ***',cl,lv
          print *,'===== end ====='
          stop
        endif
  250   cn='subroutine esub1''.  '
        go to 300
      entry esube(cc,lv,cn,cl)
        print *,'entrance is entry.'
        if(lv.ne.1) then
          print *,'*** level ng *** level=',lv
          print *,' ***',cc(1:8),cn
          print *,' ***',cl,lv
          print *,'===== end ====='
          stop
        endif
        go to 250
  300   continue
        print *,'return to caller'
        return
      end
