      program  main
       integer    ia(5),ib(6),ic(4),id(5),t(20),sz
       character  ca(5),cb(3),cc(9),cd(10),c(30)
       character*50 str
       common  // str
       equivalence (ia(2),ib)
       equivalence (ib(5),ic)
       equivalence (ic(3),id(2))
       equivalence (t(3),ia)
       equivalence (c,ca)
       equivalence (c(7),cb)
       equivalence (c(11),cc)
       equivalence (c(21),cd)
        print *,'===== start ====='
        print *,' '
        do 10 i=1,30
          c(i)='x'
   10   continue
        sz=30
        call subc(c,sz)
        call chk1(1)
        do 20 i=1,5
          ca(i)='a'
   20   continue
        call subc(c,sz)
        call chk1(2)
        do 30 i=1,3
          cb(i)='b'
   30   continue
        call subc(c,sz)
        call chk1(3)
        do 40 i=1,9
          cc(i)='c'
   40   continue
        call subc(c,sz)
        call chk1(4)
        do 50 i=1,10
          cd(i)='d'
   50   continue
        call subc(c,sz)
        call chk1(5)
        do 60 i=1,20
          t(i)=0
   60   continue
        call chk2(1,t)
        do 70 i=1,5
          ia(i)=i
   70   continue
        call chk2(2,t)
        do 80 i=1,6
          ib(i)=9+i
   80   continue
        call chk2(3,t)
        do 90 i=1,4
          ic(i)=19+i
   90   continue
        call chk2(4,t)
        do 100 i=1,5
          id(i)=29+i
  100   continue
        call chk2(5,t)
        print *,'***** ok *****'
       end
      subroutine subc(ch,ln)
       character    ch(ln)
       integer      ln,i,a,k
       character*50 st
       common  //   st
        do 150 i=1,50
          st(i:i)=' '
  150   continue
        k=1
        do 200 i=1,ln
          a=mod(i,5)
          if(a.eq.1) then
            st(k:k)=' '
            if(i.ne.1) k=k+1
          endif
          st(k:k)=ch(i)
          k=k+1
  200   continue
        return
      end
      subroutine chk1(k)
       integer k
       character*50 strng,da(5)
       common // strng
       data da/'xxxxx xxxxx xxxxx xxxxx xxxxx xxxxx               ',
     1         'aaaaa xxxxx xxxxx xxxxx xxxxx xxxxx               ',
     1         'aaaaa xbbbx xxxxx xxxxx xxxxx xxxxx               ',
     1         'aaaaa xbbbx ccccc ccccx xxxxx xxxxx               ',
     1         'aaaaa xbbbx ccccc ccccx ddddd ddddd               '/
         if(strng.ne.da(k)) then
           print *,'*** ng *** str=',strng
           print *,'           rd =',da(k)
           print *,'===== ng ====='
           stop
         endif
         print *,'*** ',k,' * ok ***'
         return
       end
       subroutine chk2(k,tt)
         integer k,tb(20,5),tt(20)
         data tb/0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
     1           0,0,1,2,3,4,5,0,0,0,0,0,0,0,0,0,0,0,0,0,
     1           0,0,1,10,11,12,13,14,15,0,0,0,0,0,0,0,0,0,0,0,
     1           0,0,1,10,11,12,13,20,21,22,23,0,0,0,0,0,0,0,0,0,
     1           0,0,1,10,11,12,13,20,30,31,32,33,34,0,0,0,0,0,0,0/
         do 1000 i=1,20
           if(tb(i,k).ne.tt(i)) then
             print *,'*** ng *** t=',tt
             print *,'          rt=',(tb(j,k),j=1,20)
             print *,'===== ng ====='
             stop
           endif
 1000    continue
         print *,'*** ok ***'
         return
       end
