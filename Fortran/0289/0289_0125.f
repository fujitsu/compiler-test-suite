      program main
      integer*4 ten
      integer*4 three
      integer*2 a(3,3,3,3,3,3,3),b(3,3,3,3,3,3,3),c(3,3,3,3,3,3,3)
      data ten/10/
      data three/3/
*
      do 10 i7=101,103
      do 10 i6=11,13
      do 10 i5=10001,10003
      do 10 i4=11,13
      do 10 i3=101,103
      do 10 i2=11,13
      do 10 i1=101,103
        a(i1-100,i2-10,i3-100,i4-10,i5-10000,i6-10,i7-100)
     c   =(i1+i2+i3+i4+i5+i6+i7-10330)*ten
        b(i1-100,i2-10,i3-100,i4-10,i5-10000,i6-10,i7-100)
     c   =(i1+i2+i3+i4+i5+i6+i7-10330)*three
        c(i1-100,i2-10,i3-100,i4-10,i5-10000,i6-10,i7-100)
     c   =(i1+i2+i3+i4+i5+i6+i7-10330)*ten*three
   10 continue
*
      do 20 i7=7,three+6
      do 20 i6=6,8
      do 20 i5=5,three+4
      do 20 i4=4,6
      do 20 i3=3,5
      do 20 i2=2,three+1
      do 20 i1=1,three
        if (((i1.eq.(i3-2)).and.(i1.eq.(i5-4)).and.(i1.eq.(i7-6))).and.
     c      (((i2-1).eq.(i4-3)).and.((i4-3).eq.(i6-5))).and.
     c      (i1.lt.(i2-1)).and.((i2-2).gt.1).and.((i2-2).le.i1)) then
          a(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
     c     =a(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
     c     -c(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)/three
        else
          a(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
     c     =a(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
     c     *b(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
     c     /(i1+i2+i3+i4+i5+i6+i7-21)
        endif
*
        if ((i1.eq.(i2-1)).and.((i2-1).eq.(i3-2)).and.
     c      ((i3-2).eq.(i4-3)).and.((i4-3).eq.(i5-4)).and.
     c      ((i5-4).eq.(i6-5)).and.((i6-5).eq.(i7-6)).and.
     c      ((i4-3).eq.3)) then
          a(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
     c     =b(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
     c     +c(i1,i2-1,i3-2,i4-3,i5-4,i6-5,i7-6)
          goto 30
        endif
*
        if ((i1.eq.(i2-1)).and.((i2-1).eq.(i3-2))
     c     .and.((i3-2).eq.(i4-3))
     c     .and.((i4-3).eq.(i5-4)).and.((i5-4).eq.(i6-5))
     c     .and.((i2-1).eq.2)) then
          j=1
   21     a(i1,i2-1,i3-2,i4-3,i5-4,i6-5,j)
     c     =(((i1**2)/(i3-2))/(i4-3))*three
          j=j+1
          if (j.le.3) goto 21
        endif
   20 continue
*
   30 do 40 i7=1,three
      do 40 i6=1,3
      do 40 i5=1,three
      do 40 i4=1,3
      do 40 i3=1,3
      do 40 i2=1,three
      do 40 i1=1,three
        if ((i1.eq.i2).and.(i2.eq.i3).and.(i3.eq.i4)
     c     .and.(i4.eq.i5).and.(i5.eq.i6)) then
          if ((i1.eq.3).and.(i7.eq.i1)) then
            if (a(i1,i2,i3,i4,i5,i6,i7).ne.
     c          (21*(three+ten*three))) then
              write (6,*) '???? ng ????  a(3,3,3,3,3,3,3)=',
     c                    a(i1,i2,i3,i4,i5,i6,i7)
              goto 50
            endif
          else
            if (i1.eq.2) then
              if (a(i1,i2,i3,i4,i5,i6,i7).ne.three) then
                write (6,*) '???? ng ????  a(2,2,2,2,2,2,n)=',
     c                      a(i1,i2,i3,i4,i5,i6,i7)
                goto 50
              endif
            else
              if (a(i1,i2,i3,i4,i5,i6,i7).ne.
     c            c(i1,i2,i3,i4,i5,i6,i7)) then
                write (6,*) '???? ng ????  a(',i1,',',i2,',',i3,',',
     c            i4,',',i5,',',i6,',',i7,')=',a(i1,i2,i3,i4,i5,i6,i7)
                goto 50
              endif
            endif
          endif
        else
          if ((i1.eq.2).and.(i2.eq.3).and.(i3.eq.2).and.(i4.eq.3)
     c       .and.(i5.eq.2).and.(i6.eq.3).and.(i7.eq.2)) then
            if (a(i1,i2,i3,i4,i5,i6,i7).ne.(three-3)) then
              write (6,*) '???? ng ????  a(2,3,2,3,2,3,2)=',
     c                    a(i1,i2,i3,i4,i5,i6,i7)
              goto 50
            endif
          else
            if (a(i1,i2,i3,i4,i5,i6,i7).ne.
     c          c(i1,i2,i3,i4,i5,i6,i7)) then
              write (6,*) '???? ng ????  a(',i1,',',i2,',',i3,',',
     c          i4,',',i5,',',i6,',',i7,')=',a(i1,i2,i3,i4,i5,i6,i7)
              goto 50
            endif
          endif
        endif
   40 continue
*
      write (6,*) '**** ok ****'
   50 stop
      end
