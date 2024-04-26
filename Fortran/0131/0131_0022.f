*
      program nrgl05
      integer i,j,k,n
      logical switch
      common /com/switch
*
      switch = .false.
      l=1
      j=2
      k=3
      n=4
*
      do 2 i=1,30
        n=n+i
        if(i*2.eq.20 .and. n.eq.35) exit
        if(i  .eq.20 .and. n.eq.35) goto 10
2     continue
1     continue
      i=i+1
10    continue
      i=i+1
      call check( 469,n )
      call check( 33, i )
*
      do 20 i=1,20
        n=n+i
        if( i.ne.0 .or. n*i.eq.0 ) goto 21
20    continue
21    continue
      call check( 1  ,i )
      call check( 470,n )
*
      do 30 i=1,20
        n=n+i
        if(i.eq.20 .or. n*i.eq.35) goto 31
30    continue
      i=i+1
31    continue
      call check( 20 ,i )
      call check( 680,n )
*
      l=3
      do 40 i=1,10
        l=j/k+l
        j=j+1
42      continue
          j=j+1
        goto(42,41,43),j-20
        k=k-2
40    continue
      j=j+1
41    continue
43    continue
      j=j+2
      call check( 10 ,i )
      call check( 24 ,j )
*
      do 50 i=0,10
51      continue
        l=l+1
52      continue
          j=j+1
        goto(51,52,53),j-20
50    continue
      j=j+1
53    continue
      call check(  3 ,l )
      call check( 36 ,j )
*
      j=j+2
        j=j+2
        goto(90,100) j-38
90    continue
      j=j+1
100   continue
      j=j+2
      call check( j, 42 )
*
      i=j
      k=i
      do i=1,20
        do
          j=j+1
          goto(110,120) j
          k=k+1
          if(k > 50) exit
*
        enddo
      enddo
*
110   continue
      j=j+1
120   continue
      j=j+1
      call check( j,42+9+19+2 )
      if( switch ) then
        write( 6,* ) ' ********* ng *********'
      else
        write( 6,* ) ' ********* ok *********'
      endif
      stop
      end
*
      subroutine check( i,j )
      integer           i,j
      logical switch
      common /com/switch
      if( i.ne.j ) then
        switch = .true.
      endif
      return
      end
