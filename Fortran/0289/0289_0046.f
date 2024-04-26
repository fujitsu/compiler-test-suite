      program main
       integer  a(5,5),x,r,i,j,b(5,5)
       print *,'===== start ====='
       x=0
       do 20 i=1,5
         do 10 j=1,5
           if(i.eq.j) then
             a(i,j)=i*10
           else
             a(i,j)=x
           endif
           x=x+1
   10    continue
   20  continue
       do 25 i1=1,5
         do 25 i2=1,5
           b(i1,i2)=a(i1,i2)
   25  continue
       call isub1(r,a,b)
       if(r.ne.0) go to 70
       do 50 i=1,5
         do 30 j=1,5
           a(i,j)=a(i,j)-1
   30    continue
         do 40 j=1,5
           a(i,j)=a(i,j)+1
   40    continue
         call isub1(r,a,b)
         if(r.ne.0) go to 70
   50  continue
       do 60 i=1,5
         if(i.eq.1) then
           call esub(a)
         else
           call esube(a,i)
         endif
   60  continue
       print *,'***** ok *****'
   70  print *,'===== end ====='
       stop
      end
       subroutine isub1(r,a,b)
        integer    r,m,a(5,5),b(5,5)
        character  ch*3,str*70
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
          str(i:i)=' '
 105    continue
        do 120 i=1,5
          if(i.eq.1) then
            str(1:5)=' a = '
          endif
          m=6
          do 110 j=1,5
            call isub2(ch,a(i,j))
            str(m:m+3)=ch//','
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
        integer      b,y(5),s(5),w
        data tbl/'0','1','2','3','4','5','6','7','8','9'/
        s(1)=b/100
        y(1)=mod(b,100)
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
