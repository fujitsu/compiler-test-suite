      call s1
      print *,'pass'
      end
      subroutine s1
      common /x/ ip21,ip22
      integer*8 ip21,ip22, ip11, ip12
      ip11=malloc(2)
      ip12=malloc(8)
      call s11(ip11,ip12)
      ip21=malloc(2)
      ip22=malloc(8)
      call s12
      end
      subroutine s11(ip1,ip2)
      pointer (ip1,c),(ip2,i)
      integer*8 i,j
      character*2 c,x
      integer ma(10)
      i=10
      write(c,'(i2)') i
      if (c.ne.'10') print *,"fail"
      if (i.ne.10 ) print *,"fail"
      do 1 j=1,10
         i=i+1
         write(c,'(i2)') i
         write(x,'(i2)') j+10
         if (i.ne.j+10)print *,"fail"
         if (x.ne.c   )print *,"fail"
1     continue
      if (i.ne. 20 ) print *,"fail"
      if (c.ne.'20') print *,"fail"
      k=20
      do 2 j=1,10
         k=k+j
         ma(j)=k
2     continue
      do 3 j=1,10
         i=i+j
         if (i.ne.ma(j))print *,"fail"
         write(c,'(i2)') i
         write(x,'(i2)') ma(j)
         if (c.ne.x)print *,"fail"
3     continue
      do 4 j=1,10
         i=j+1
         write(c,'(i2)') i
         write(2,*) i , i+1
         write(3,'(a)') c
4     continue
      rewind 2
      c='xx'
      if (c.ne.'xx')print *,"fail"
      rewind 3
      do 5 j=1,10
         read (2,*) ii, jj
         read (3,'(a)') c
         if (ii.ne.j+1  )print *,"fail"
         if (jj.ne.j+2)print *,"fail"
         write (x,'(i2)') j+1
         if (x.ne.c) print *,"fail"
5     continue
      do 6 j=1,10
         i=j+1
         write (c,'(i2)') i
         write (x,'(i2)') j+1
         call s111( i , i+1 ,j , c , x)
         if (i.ne.j+1+10) print *,"fail"
         if (c.ne.char(i)//char(i))print *,"fail"
         if (ichar(c(1:1)).ne.i)print *,"fail"
         if (ichar(c(2:2)).ne.i)print *,"fail"
         if (ichar(c     ).ne.i)print *,"fail"
6     continue
      do 7 j=1,10
         k=j
         k=k**k
         ma(j)=k
7     continue
      do 8 j=1,10
         i=j
         i=i**i
         if (i.ne.j**j) print *,"fail"
8     continue
      end
      subroutine s111(i1,i2,i3,c,x)
      integer*8 i1, i2, i3
      character*(*) c,x
      if (len(c).ne.2)print *,"fail"
      if (len(x).ne.2)print *,"fail"
      if (c.ne.x) print *,"fail"
      if (i1.ne.i3+1         ) print *,"fail"
      if (i2.ne.i3+2
     1)  print *,"fail"
      i1=i1+10
      c=char(i1)//char(i1)
      end
      subroutine s12
      common /x/ ip1 ,ip2
      pointer (ip1,c),(ip2,i)
      integer*8 i, j
      character*2 c,x
      integer ma(10)
      i=10
      write(c,'(i2)') i
      if (c.ne.'10') print *,"fail"
      if (i.ne.10 ) print *,"fail"
      do 1 j=1,10
         i=i+1
         write(c,'(i2)') i
         write(x,'(i2)') j+10
         if (i.ne.j+10)print *,"fail"
         if (x.ne.c   )print *,"fail"
1     continue
      if (i.ne. 20 ) print *,"fail"
      if (c.ne.'20') print *,"fail"
      k=20
      do 2 j=1,10
         k=k+j
         ma(j)=k
2     continue
      do 3 j=1,10
         i=i+j
         if (i.ne.ma(j))print *,"fail"
         write(c,'(i2)') i
         write(x,'(i2)') ma(j)
         if (c.ne.x)print *,"fail"
3     continue
      do 4 j=1,10
         i=j+1
         write(c,'(i2)') i
         write(2,*) i , i+1
         write(3,'(a)') c
4     continue
      rewind 2
      c='xx'
      if (c.ne.'xx')print *,"fail"
      rewind 3
      do 5 j=1,10
         read (2,*) ii, jj
         read (3,'(a)') c
         if (ii.ne.j+1)print *,"fail"
         if (jj.ne.j+2)print *,"fail"
         write (x,'(i2)') j +1
         if (x.ne.c) print *,"fail"
5     continue
      do 6 j=1,10
         i=j+1
         write (c,'(i2)') i
         write (x,'(i2)') j+1
         call s111( i , i+1 ,j , c , x)
         if (i.ne.j+1+10) print *,"fail"
         if (c.ne.char(i)//char(i))print *,"fail"
         if (ichar(c(1:1)).ne.i)print *,"fail"
         if (ichar(c(2:2)).ne.i)print *,"fail"
         if (ichar(c     ).ne.i)print *,"fail"
6     continue
      do 7 j=1,10
         k=j
         k=k**k
         ma(j)=k
7     continue
      do 8 j=1,10
         i=j
         i=i**i
         if (i.ne.j**j) print *,"fail"
8     continue
      end
