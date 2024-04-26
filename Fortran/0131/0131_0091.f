*
      program main
      integer*4 i8(1000)
      integer*4 i4(999)
      integer*2 i2(998)
      real   *4 r4(997)
      real   *8 r8(996)
      real*8   rq(995)
      logical l
      do 1 i=1,1000
        i8(i)=1
1     continue
      do 2 i=1,999
        i4(i)=1
2     continue
      do 3 i=1,998
        i2(i)=1
3     continue
      do 4 i=1,997
        r4(i)=1
4     continue
      do 5 i=1,996
        r8(i)=1
5     continue
      do 6 i=1,995
        rq(i)=1
6     continue
      call sub(i2,i4,i8,r4,r8,rq)
      l = i8(1) .eq. 0  .and. i8(101) .eq. 1
      l = i4(1) .eq. 0  .and. i4(101) .eq. 1 .and. l
      l = i2(1) .eq. 0  .and. i2(101) .eq. 1 .and. l
      l = r4(1) .eq. 0  .and. r4(101) .eq. 1 .and. l
      l = r8(1) .eq. 0  .and. r8(101) .eq. 1 .and. l
      l = rq(1) .eq. 0  .and. rq(101) .eq. 1 .and. l
      call main2
      if( l ) then
      else
        write(6,*) ' ***** ng ***** '
      endif
      stop
      end
      subroutine sub(i2,i4,i8,r4,r8,rq)
      integer*2      i2(100)
      integer*4      i4(100)
      integer*4      i8(100)
      real   *4      r4(100)
      real   *8      r8(100)
      real   *8      rq(100)
      integer*2     ni2(100)
      integer*4     ni4(100)
      integer*4     ni8(100)
      real   *4     nr4(100)
      real   *8     nr8(100)
      real   *8     nrq(100)
      character*100 chars
      do 1 i=1,100
        i2(i)=0
        i4(i)=0
        i8(i)=0
        r4(i)=0
        r8(i)=0
        rq(i)=0
        chars(i:i)='a'
1     continue
      do 2 i=1,100
        ni2(i)=0
        ni4(i)=0
        ni8(i)=0
        nr4(i)=0
        nr8(i)=0
        nrq(i)=0
        chars(i:i)='b'
2     continue
      do 3 i=1,100
        if( ni2(i).ne.0 .or. ni4(i).ne.0 .or. ni8(i).ne.0 .or.
     +      chars(i:i) .ne. 'b' ) then
          write(6,*) ' ***** ng ***** '
          stop
        endif
        if( nr4(i).ne.0 .or. nr8(i).ne.0 .or. nrq(i).ne.0 ) then
          write(6,*) ' ***** ng ***** '
          stop
        endif
3     continue
      return
      end
      subroutine main2
      real*8 dim(100)
      integer idim(100)
      do 1 i=1,100
        dim(i)=1.
        idim(i)=1
1     continue
      call sub1(dim,idim)
      call sub2(idim)
      call sub3(idim)
      call sub4(idim)
      call sub5(idim)
      write(6,*) ' ***** ok ***** '
      stop
      end
      subroutine sub1(dim,idim)
      real*8 dim(100)
      character*10 func1
      integer idim(100)
      integer*4 dummy(100)
      integer i,j,k
      i=loc(dummy(1))
      call sub10( func1('abc def') )
      j=1
      k=1
      do 1 i=1,100
        if( idim(i) .eq.1000 ) then
          k=k+1
          goto 10
        endif
        dim(i)=dim(i)+1.
        j=j+1
 1    continue
10    continue
      if( k.eq.1 .and. j.eq.101 ) then
      else
        write(6,*) ' ****** ok.1 ***** '
        stop
      endif
      return
      end
      subroutine sub2(idim)
      integer        idim(100)
      integer        i,j,k
      i=1
      j=1
      k=1
10    continue
        i=i+1
        do 1 k=1,100
          if( idim(k).eq.1 ) then
            idim(k) = 0
            goto 10
          endif
          j=j+1
1       continue
      if( i.eq.102 .and. k.eq.101 .and. j.eq.5051 ) then
      else
        write(6,*) ' ***** ng.2 ***** ',i,k,j
        stop
      endif
      return
      end
      subroutine sub3(idim)
      integer idim(100)
      integer i,j,k
      j=1
      k=1
      do 1 i=1,100
        if( idim(i) .eq. 100 ) then
          if( j.eq.1 .and. k.eq. 1 ) then
            write(6,*) ' ***** ng.3 ***** '
            stop
          endif
          return
        endif
1     continue
      return
      end
      subroutine sub4(idim)
      integer         idim(100)
      integer i,j,k,n
      equivalence (j,k)
      j=1
      do 1 n=1,100
        do 1 i=1,100
          if( idim(i).eq. 3 ) goto 10
          k=k+1
1     continue
10    continue
      if( k.eq.10001 ) then
      else
        write(6,*) ' ***** ng.4 ***** '
        stop
      endif
      return
      end
      subroutine sub5(idim)
      integer         idim(100)
      integer i  ,k,n
      k=1
      do 1 n=1,100
        do 1 i=1,100
          if( idim(i).eq. 3 ) goto 10
          k=k+1
1     continue
10    continue
      if( k.eq.10001 ) then
      else
        write(6,*) ' ***** ng.4 ***** ',k
        stop
      endif
      return
      end
      character*10 function func1(c)
      character*(*) c
      func1=c
      return
      end
      subroutine sub10( c )
      character*(*) c
      if( c .ne. 'abc def' ) then
        write(6,*) ' ***** ng.10 ***** '
        stop
      endif
      return
      end
