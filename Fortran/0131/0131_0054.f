c
       program        rnrst24
       character*100  sss1, strfun
       common /cans/  sss1
c
       sss1 = strfun( sss1, 'hera', 10 )
       call  hsub( sss1, *100, *200, *300, *400 )
       goto 401
 100   sss1(1:1)='*'
 200   sss1(2:2)='*'
 300   sss1(3:3)='*'
 400   sss1(4:4)='*'
 401   continue
       do 402 i=1,4
         if ( sss1(i:i).eq.'*' ) then
           write(6,*) '*** : test1 ng ***'
         endif
 402   continue
c
       call  dumy( strfun( sss1, 'hera', 10 ) )
       call  hsub( sss1, *500, *600, *700, *800 )
       do 410 i=ilen(sss1),100
 410     call  dsp( sss1(i:i) )
       write(6,*) '*** : test2 ng ***'
       stop
 500   do 510 i=1,ilen(sss1)
 510     call  dsp( sss1(i:) )
       call okchk
       stop
 600   do 610 i=1,100,ilen(sss1)
 610     call  dsp( sss1(:i) )
       write(6,*) '*** : test2 ng ***'
       stop
 700   do 710 i=ilen(sss1), ilen(sss1)+10
 710     call  dsp( sss1(i:i*2) )
       write(6,*) '*** : test2 ng ***'
       stop
 800   do 810 i=ilen(sss1),ilen(sss1),ilen(sss1)
 810     call  dsp( sss1 )
       write(6,*) '*** : test2 ng ***'
       stop
       end
c
       function  strfun( s1, s2, is )
       character s1*100, s2*(*), strfun*100
       integer   is
         do 100 i=1,100,is
           s1(i:i+is-1)     = s2
           strfun(i:i+is-1) = '     '//s2
100      continue
       end
c
       subroutine hsub( str, *, *, *, * )
       character  str*(*)
       do 100 ipos=1,4
         if ( str(ipos:ipos).eq.'h' ) goto 200
100    continue
       return
200    goto(201,202,203,204) ipos
201    return 1
202    return 2
203    return 3
204    return 4
       end
c
       function ilen( str )
       character*(*)  str
       ilen=1
       do 1000 while( str(ilen:ilen).ne.' ' )
1000     ilen=ilen+1
       return
       end
c
       subroutine dsp( str )
       character       str*(*)
         integer       noc
         character*100 sans
         logical       lgi
         common /cnum/ noc
         common /cans/ sans
         common /rslt/ lgi
         noc = noc+1
         lgi = lgi .and. ( str.eq.sans(noc:) )
       end
c
       subroutine okchk
         integer       noc
         logical       lgi
         common /cnum/ noc
         common /rslt/ lgi
         if ((noc.eq.5).and.lgi) then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
         endif
       end
c
       subroutine dumy(s)
       character  s*(*)
       end
c
       block data
         integer       noc
         character*100 sans
         logical       lgi
         common /cnum/ noc
         common /cans/ sans
         common /rslt/ lgi
         data          noc/0/
         data          lgi/.true./
       end
