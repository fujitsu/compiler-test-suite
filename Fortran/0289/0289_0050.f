       program main
        integer a(10),b(10),c(10),d,e,f,ctr,label,n
        integer a1(10),b1(10),c1(10)
        print *,'===== start ====='
        do 5 i=1,10
          a(i)=i
          b(i)=i+10
          c(i)=i+20
    5   continue
        ctr=0
   10   read(*,15,err=88,end=99) d,e,f
   15   format(3i4)
        do 20 i=1,10
          if(d.eq.a(i)) then
            a1(i)=d
          else
            a1(i)=0
          endif
          if(e.eq.b(i)) then
            b1(i)=e
          else
            b1(i)=0
          endif
          if(f.eq.c(i)) then
            c1(i)=f
          else
            c1(i)=0
          endif
   20   continue
        call sub1(a1)
        call sub1(b1)
        call sub1(c1)
        ctr=ctr+1
        call sub2(ctr,a1,b1,c1)
        go to 10
   88   print *,'*** read err ***'
        print *,'===== end ====='
        stop
   99   print *,'*** read end ***'
        call sub4(a,b,c,n)
        jg=1
        go to (200,250,300,100) n
  100   jg=10
        call esub4(a,b,c,*400,*450,*500)
        go to 999
  200   assign 600 to label
        go to 900
  250   assign 650 to label
        go to 900
  300   assign 700 to label
        go to 900
  400   write(*,err=990,fmt='(a15,i4)') '*** a ng *** a=',a
        print *,'===== end ====='
        stop
  450   write(*,err=990,fmt='(a15,i4)') '*** b ng *** b=',b
        print *,'===== end ====='
        stop
  500   write(*,err=990,fmt='(a15,i4)') '*** c ng *** c=',c
        print *,'===== end ====='
        stop
  600   print *,'*** a ng *** a=',a
        print *,'===== end ====='
        stop
  650   print *,'*** b ng *** b=',b
        print *,'===== end ====='
        stop
  700   print *,'*** c ng *** c=',c
        print *,'===== end ====='
        stop
  900   if(jg.eq.1) then
          assign 100 to label0
          go to label
        else
        endif
        go to label0
  990   print *,'*** write err ***'
        print *,'===== end ====='
        stop
  999   print *,'***** ok *****'
        print *,'===== end ====='
        stop
      end
        subroutine sub1(ary)
          integer ary(10),a(10)
          do 1000 i=1,10
            if(ary(i).eq.0) then
              a(i)=1
            else
              a(i)=0
            endif
 1000     continue
          return
        end
        subroutine sub2(ctr,a,b,c)
         integer ctr,a(10),b(10),c(10)
         character x
         do 2000 i=1,3
           if(i.eq.1) call sub3(ctr,a,x,i,*2100)
           if(i.eq.2) call sub3(ctr,b,x,i,*2100)
           if(i.eq.3) call sub3(ctr,c,x,i,*2100)
 2000    continue
         return
 2100    write(*,fmt='(a14,a1,a8)',err=2200)'*** in sub2 * ',x,' ng ***'
         print *,'===== end ====='
         stop
 2200    print *,'*** write err ***'
         print *,'===== end ====='
        end
        subroutine sub3(ctr,ar,x,i,*)
          integer ctr,ar(10)
          character*10 cc(4),ans
          character x
          data cc/'0000100000','0000000001','1000000000','0010000000'/
          if(i.eq.1) then
            x='a'
          else if(i.eq.2) then
            x='b'
          else if(i.eq.3) then
            x='c'
          endif
          do 3000 j=1,10
            if(ar(j).ne.0) then
              ans(j:j)='1'
            else
              ans(j:j)='0'
            endif
 3000     continue
          if(ans.ne.cc(ctr)) then
            return 1
          else
            write(*,err=3999,fmt=3500) '*** in sub3 ** ',x,' ok ***'
 3500       format(a15,a1,a7)
            return 0
          endif
 3999     print *,'*** write err ***'
          print *,'===== end ====='
          stop
        end
      subroutine sub4(a,b,c,n)
        integer a(10),b(10),c(10),aa(10),bb(10),cc(10)
        integer n
        data aa/1,2,3,4,5,6,7,8,9,10/
        data bb/11,12,13,14,15,16,17,18,19,20/
        data cc/21,22,23,24,25,26,27,28,29,30/
        do 4000 i=1,5
          if(aa(i).ne.a(i)) then
            n=1
            return
          else if(bb(i).ne.b(i)) then
            n=2
            return
          else if(cc(i).ne.c(i)) then
            n=3
            return
          endif
 4000   continue
        n=4
        return 0
      entry esub4(a,b,c,*,*,*)
        do 4100 i=6,10
          if(aa(i).ne.a(i)) then
            return 1
          else if(bb(i).ne.b(i)) then
            return 2
          else if(cc(i).ne.c(i)) then
            return 3
          endif
 4100   continue
        return
      end
