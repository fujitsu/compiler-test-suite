      call s1
      print *,'pass'
      end
      subroutine s1
      integer*8 ip11,ip12,ip21,ip22,ip31,ip32,ip33,ip34,malloc
      common /x/ ip21,ip22
      ip11=malloc(2_8)
      ip12=malloc(4_8)
      call s11(ip11,ip12)
      ip21=malloc(2_8)
      ip22=malloc(4_8)
      call s12(ip21,ip22)
      ip31=malloc(2_8)
      ip32=malloc(4_8)
      ip33=malloc(4_8)
      ip34=malloc(4_8)
      call s13(ip31,ip32,ip33,ip34)
      end
      subroutine s11(ip1,ip2)
      pointer (ip1,c),(ip2,i)
      character*2 c,x
      integer ma(10)
      i=10
      write(c(1:2),'(i2)') i
      if (c(1:2).ne.'10') print *,'fail'
      if (i.ne.10 ) print *,'fail'
      do 1 j=1,10
         i=i+1
         write(c(1:2),'(i2)') i
         write(x,'(i2)') j+10
         if (i.ne.j+10)print *,'fail'
         if (x.ne.c   )print *,'fail'
1     continue
      if (i.ne. 20 ) print *,'fail'
      if (c( :2).ne.'20') print *,'fail'
      k=20
      do 2 j=1,10
         k=k+j
         ma(j)=k
2     continue
      do 3 j=1,10
         i=i+j
         if (i.ne.ma(j))print *,'fail'
         write(c(:2),'(i2)') i
         write(x,'(i2)') ma(j)
         if (c(:).ne.x)print *,'fail'
3     continue
      do 4 j=1,10
         i=j+1
         write(c(:),'(i2)') i
         write(1,*) i , i+1
         write(11,'(a)') c(1:2)
4     continue
      rewind 1
      c(1:2)='xx'
      if (c(:2).ne.'xx')print *,'fail'
      rewind 11
      do 5 j=1,10
         read (1,*) ii, jj
         read (11,'(a)') c(:2)
         if (ii.ne.j+1)print *,'fail'
         if (jj.ne.j+2)print *,'fail'
         write (x,'(i2)') j+1
         if (x.ne.c(1:2)) print *,'fail'
5     continue
      do 6 j=1,10
         i=j+1
         write (c(:2),'(i2)') i
         write (x,'(i2)') j+1
         call s111( i , i+1 ,j , c(1:2) , x)
         if (i.ne.j+1+10) print *,'fail'
         if (c(1:2).ne.char(i)//char(i))print *,'fail'
         if (ichar(c(1:1)).ne.i)print *,'fail'
         if (ichar(c(2:2)).ne.i)print *,'fail'
         if (ichar(c     ).ne.i)print *,'fail'
6     continue
      do 7 j=1,10
         k=j
         k=k**k
         ma(j)=k
7     continue
      do 8 j=1,10
         i=j
         i=i**i
         if (i.ne.j**j) print *,'fail'
8     continue
      end
      subroutine s12(ip1,ip2)
      pointer (ip1,c),(ip2,i)
      character*2 c,x
      integer ma(10),z,y
      i=10
      y=1
      z=2
      write(c(y:z),'(i2)') i
      if (c(y:z).ne.'10') print *,'fail'
      if (i.ne.10 ) print *,'fail'
      do 1 j=1,10
         i=i+1
         write(c(y:z),'(i2)') i
         write(x,'(i2)') j+10
         if (i.ne.j+10)print *,'fail'
         if (x.ne.c(y:z)   )print *,'fail'
1     continue
      if (i.ne. 20 ) print *,'fail'
      if (c(1:z).ne.'20') print *,'fail'
      k=20
      do 2 j=1,10
         k=k+j
         ma(j)=k
2     continue
      do 3 j=1,10
         i=i+j
         if (i.ne.ma(j))print *,'fail'
         write(c(y:2),'(i2)') i
         write(x,'(i2)') ma(j)
         if (c(:z).ne.x)print *,'fail'
3     continue
      do 4 j=1,10
         i=j+1
         write(c(y:z),'(i2)') i
         write(1,*) i , i+1
         write(11,'(a)') c(y:z)
4     continue
      rewind 1
      c(y:z)='xx'
      if (c(:z).ne.'xx')print *,'fail'
      rewind 11
      do 5 j=1,10
         read (1,*) ii, jj
         read (11,'(a)') c(:z)
         if (ii.ne.j+1)print *,'fail'
         if (jj.ne.j+2)print *,'fail'
         write (x,'(i2)') j+1
         if (x.ne.c(y:z)) print *,'fail'
5     continue
      do 6 j=1,10
         i=j+1
         write (c(:z),'(i2)') i
         write (x,'(i2)') j+1
         call s111( i , i+1 ,j , c(y:z) , x)
         if (i.ne.j+1+10) print *,'fail'
         if (c(y:z).ne.char(i)//char(i))print *,'fail'
         if (ichar(c(y:y)).ne.i)print *,'fail'
         if (ichar(c(z:z)).ne.i)print *,'fail'
         if (ichar(c     ).ne.i)print *,'fail'
6     continue
      do 7 j=1,10
         k=j
         k=k**k
         ma(j)=k
7     continue
      do 8 j=1,10
         i=j
         i=i**i
         if (i.ne.j**j) print *,'fail'
8     continue
      end
      subroutine s13(ip1,ip2,ip3,ip4)
      pointer (ip1,c),(ip2,i),(ip3,y)
      pointer                 (ip4,z)
      character*2 c,x
      integer ma(10),z,y
      i=10
      y=1
      z=2
      write(c(y:z),'(i2)') i
      if (c(y:z).ne.'10') print *,'fail'
      if (i.ne.10 ) print *,'fail'
      do 1 j=1,10
         i=i+1
         write(c(y:z),'(i2)') i
         write(x,'(i2)') j+10
         if (i.ne.j+10)print *,'fail'
         if (x.ne.c(y:z)   )print *,'fail'
1     continue
      if (i.ne. 20 ) print *,'fail'
      if (c(1:z).ne.'20') print *,'fail'
      k=20
      do 2 j=1,10
         k=k+j
         ma(j)=k
2     continue
      do 3 j=1,10
         i=i+j
         if (i.ne.ma(j))print *,'fail'
         write(c(y:2),'(i2)') i
         write(x,'(i2)') ma(j)
         if (c(:z).ne.x)print *,'fail'
3     continue
      do 4 j=1,10
         i=j+1
         write(c(y:z),'(i2)') i
         write(1,*) i , i+1
         write(11,'(a)') c(y:z)
4     continue
      rewind 1
      c(y:z)='xx'
      if (c(:z).ne.'xx')print *,'fail'
      rewind 11
      do 5 j=1,10
         read (1,*) ii, jj
         read (11,'(a)') c(:z)
         if (ii.ne.j+1)print *,'fail'
         if (jj.ne.j+2)print *,'fail'
         write (x,'(i2)') j  +1
         if (x.ne.c(y:z)) print *,'fail'
5     continue
      do 6 j=1,10
         i=j+1
         write (c(:z),'(i2)') i
         write (x,'(i2)') j+1
         call s111( i , i+1 ,j , c(y:z) , x)
         if (i.ne.j+1+10) print *,'fail'
         if (c(y:z).ne.char(i)//char(i))print *,'fail'
         if (ichar(c(y:y)).ne.i)print *,'fail'
         if (ichar(c(z:z)).ne.i)print *,'fail'
         if (ichar(c     ).ne.i)print *,'fail'
6     continue
      do 7 j=1,10
         k=j
         k=k**k
         ma(j)=k
7     continue
      do 8 j=1,10
         i=j
         i=i**i
         if (i.ne.j**j) print *,'fail'
8     continue
      end
      subroutine s111(i1,i2,i3,c,x)
      character*(*) c,x
      if (len(c).ne.2)print *,'fail'
      if (len(x).ne.2)print *,'fail'
      if (c.ne.x) print *,'fail'
      if (i1.ne.i3+1) print *,'fail'
      if (i2.ne.i3+2) print *,'fail'
      i1=i1+10
      c=char(i1)//char(i1)
      end
