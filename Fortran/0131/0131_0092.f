      program main
      character*3 c
      sum=1.
      isum=1
      do 1 i=1,100
        sum=sum+i
        isum=isum+i
1     continue
      do 2 i=1,1
        call sub(i)
2     continue
      c = 'ng '
      if( sum.eq.5051 .and. isum.eq.5051 ) then
         c = 'ok '
      endif
      do 3 i=1,1
        write(6,*) ' *****  '//c//'*****'
3     continue
      stop
      end
      subroutine sub(k)
      integer i,j,k
      j=1
      do 1 i=1,100
        if( j.eq.5 ) goto 10
        j=j+1
1     continue
10    continue
      do 2 i=1,1
        if( j.eq.5 .and. k.eq.1 ) then
          call sub2('ok')
        else
          call sub2('ng')
        endif
2     continue
      return
      end
      subroutine sub2(c)
      character*(*)    c
      if( c.eq.'ng' ) then
        do 1 i=1,1
          write(6,*) ' ***** ng.1 ***** '
1       continue
      endif
      i0=1
      i1=1
      i2=1
      i3=1
      i4=1
      i5=1
      i6=1
      i7=1
      i8=1
      i9=1
      i10=1
10    continue
        i0=i0+1
11    continue
        i1=i1+1
        if( mod(i0,10).eq.2 ) goto 10
12    continue
        i2=i2+1
        if( mod(i1,10).eq.2 ) goto 11
13    continue
        i3=i3+1
        if( mod(i2,10).eq.2 ) goto 12
14    continue
        i4=i4+1
        if( mod(i3,10).eq.2 ) goto 13
15    continue
        i5=i5+1
        if( mod(i4,10).eq.2 ) goto 14
16    continue
        i6=i6+1
        if( mod(i5,10).eq.2 ) goto 15
17    continue
        i7=i7+1
        if( mod(i6,10).eq.2 ) goto 16
18    continue
        i8=i8+1
        if( mod(i7,10).eq.2 ) goto 17
19    continue
        i9=i9+1
        if( mod(i8,10).eq.2 ) goto 18
20    continue
        if( mod(i9,10).eq.2 ) goto 19
        i10=i10+1
      if( mod(i10,10).eq.2 ) goto 20
      do 1000 i=1,1
        if( i0.ne.3 .or. i10.ne.3 ) then
          write(6,*) ' ***** ng.2 ***** '
        endif
        call sub3(i7,i8)
1000  continue
      return
      end
      subroutine sub3(i1,i2)
      integer         i1,i2
      n=0
      do 1 i=1,100
        do 1 j=1,100
          do 1 k=1,100
            if( i1+i+j+k.eq.7 ) then
              goto(2,3,4),i2
            endif
1     continue
      n=n+1
2     continue
      n=n+1
3     continue
      n=n+1
4     continue
      n=n+1
      do 100 m=1,1
        if( i.ne.1 .or. j.ne.1 .or. k.ne.2 .or. n.ne.1 ) then
          write(6,*) ' ****** ng.3 ***** '
        endif
100   continue
      return
      end
