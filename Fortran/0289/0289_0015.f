       program main
       character*40 str,ctr
       character*6  eto,lg,cyear
       character*4  no
       character    sp,qut
       integer      lng(12)
       call df07(loc(str),loc(ctr),
     1          loc(eto),loc(lg),loc(cyear),
     2          loc(no),
     3          loc(sp),loc(qut),
     4          loc(lng))     
       end
       subroutine df07($str,$ctr,$eto,$lg,$cyear,$no,$sp,$qut,$lng)
       character*40 str,ctr
       character*6  eto,lg,senm(12),cyear
       character*4  no
       character*2  ctbl(12)
       character    sp,qut
       integer      lng(12),i,j,year(2),tabl(12)
       pointer ($str,str),($ctr,ctr)
       pointer ($eto,eto),($lg,lg),($cyear,cyear)
       pointer ($no,no)
       pointer ($sp,sp),($qut,qut)
       pointer ($lng,lng)
       data senm/'rat','ox','tiger','hare','dragon','snake',
     1           'horse','sheep','monkey','hen','dog','boar'/
       data ctbl/' 1',' 2',' 3',' 4',' 5',' 6',' 7',' 8',' 9',
     1           '10','11','12'/
       data year/1989,1964/
       data tabl/8,9,10,11,12,1,2,3,4,5,6,7/
       print *,'***** start *****'
       ctr=' no    eto      len   1234567890'
       no='(  )'
       sp=' '
       qut=''''
       lg='(l=  )'
       do 30 i=1,12
         do 10 j=1,6
           if(senm(i)(j:j).eq.' ') then
             go to 20
           endif
   10    continue
   20    j=j-1
         lng(i)=j
   30  continue
       do 40 i=1,12
         no(2:3)=ctbl(i)
         eto=senm(i)
         lg(4:5)=ctbl(lng(i))
         call isub(str,no,sp,qut,eto,lg,lng(i))
         call chek(str)
   40  continue
       do 80 i=1,2
         call esub(year(i),cyear)
         l=mod(year(i),12)+1
         print *,cyear
         m=tabl(l+1)
         no(2:3)=ctbl(m)
         eto=senm(m)
         lg(4:5)=ctbl(lng(m))
         call isub(str,no,sp,qut,eto,lg,lng(m))
         call chek(str)
  80   continue
       print *,'***** ok *****'
       print *,'***** end *****'
      end
      subroutine isub(str,no,sp,qut,eto,lg,lng)
       character*(*) no,sp,qut,eto,lg,str
       character*10  star
       integer lng,pos
        star='          '
        do 90 k=1,lng
          star(k:k)='*'
  90    continue
        str=no//sp//qut//eto//qut//sp//lg//sp//sp//star
        print *,str
        pos=4+1+1+lng+1
        str(13:13)=' '
        str(pos:pos)=''''
        return
      end
      subroutine esub(yy,ch)
       integer yy,th,hu,te,on
       character*6 ch
       character num(10)
        data num/'0','1','2','3','4','5','6','7','8','9'/
        th=yy/1000
        hu=(yy-th*1000)/100
        te=(yy-th*1000-hu*100)/10
        on=yy-th*1000-hu*100-te*10
        ch='('//num(th+1)//num(hu+1)//num(te+1)//num(on+1)//')'
        do 100 i=2,5
          if(ch(i:i).eq.'0') then
            ch(i:i)=' '
          else
            go to 200
          endif
 100    continue
 200    return
      end
      subroutine chek(str)
       character*40 str
       character*40 rd(12)
       character*2  rs(12)
       data rd/'( 1) ''rat''    (l= 3)  ***               ',
     1         '( 2) ''ox''     (l= 2)  **                ',
     1         '( 3) ''tiger''  (l= 5)  *****             ',
     1         '( 4) ''hare''   (l= 4)  ****              ',
     1         '( 5) ''dragon'' (l= 6)  ******            ',
     1         '( 6) ''snake''  (l= 5)  *****             ',
     1         '( 7) ''horse''  (l= 5)  *****             ',
     1         '( 8) ''sheep''  (l= 5)  *****             ',
     1         '( 9) ''monkey'' (l= 6)  ******            ',
     1         '(10) ''hen''    (l= 3)  ***               ',
     1         '(11) ''dog''    (l= 3)  ***               ',
     1         '(12) ''boar''   (l= 4)  ****              '/
       data rs/' 1',' 2',' 3',' 4',' 5',' 6',' 7',' 8',' 9',
     1         '10','11','12'/
         do 1000 i=1,12
           if(str(2:3).eq.rs(i)) go to 1100
 1000    continue
 1100    if(rd(i).ne.str) then
           print *,'*** ng *** data=',str
           print *,'     right data=',rd(i)
           print *,'***** end *****'
           stop
         endif
         print *,'*** ',rs(i),' ok ***'
         return
      end
