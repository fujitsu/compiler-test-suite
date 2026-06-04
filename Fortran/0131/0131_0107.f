*
      program snrgl7
      logical switch
      common /com/switch
      switch = .false.

      call test1
      call test2
      call test3
      call test4
      call test5
      call test6
      call test7
      call test8
      call test9
      call test10
      call test11
      call test12
      call test13
      if( switch ) then
        write( 6,* ) '********** ng **********'
      else
        write( 6,* ) '********** ok **********'
      endif
      stop
      end
*
      subroutine test1
      integer i,n
      call getnum(n)
      i=n-4
10    continue
        i=i+1
20    continue
        i=i+1
      if(i)20,10,30
30    continue
      i=i+1
      call check( i,3 )
      return
      end
*
      subroutine test2
      integer i
      call getnum(i)
      i=i-2
110   continue
      i=i-1
120   continue
        i=i+1
      goto(120,130,110) i
130   continue
      call check( i,-1 )
      return
      end
*
      subroutine test3
      integer i,n
      call getnum(i)
      assign 210 to n
      assign 220 to n
      assign 230 to n
210   continue
      i=i-1
220   continue
        i=i+1
      goto n,(210,220,230)
*
230   continue
      call check( i,1 )
      return
      end
*
      subroutine test4
      integer i
      call getnum(i)
310   continue
      i=i-1
320   continue
      i=i+1
      call sub(*310,*320,*330)
330   continue
      call check( i,2 )
      return
      end
*
      subroutine test5
      integer n,i,dim(100)
      call getnum(n)
      do 10 i=1,100
        dim(i)=i
10    continue
*
20    continue
      do 30 i=1,100
        dim(i)=dim(i)+1
        if( dim(i).le.20 ) goto 20
30    continue
      call check( dim(1)+dim(20)+dim(30),192+21+31)
*
      i=1
40    continue
      do 50 while( i.le.100 )
        dim(i)=dim(i)+1
        if( dim(i).le.50 ) goto 40
        i=i+1
50    continue
      call check( dim(1)+dim(50)+dim(100),193+52+102)
*
      i=1
60    continue
      call check( n,1 )
      return
      end
*
      subroutine test6
      integer i,j,k,l
      call getnum(i)
      do 10 j=1,10
        do 20 k=1,10
          i=i+k+j
1         continue
            i=i+1
            do 30 l=1,20
              i=i+1
              if( i.le.100) goto 1
              i=i+1
30          continue
20      continue
10    continue
      call check(i,5297)
      return
      end
*
      subroutine test7
      integer i,j,k
      call getnum(i)
1     continue
        i=i+1
        do 10 j=1,10
          do 20 k=1,10
            i=i+1
20        continue
          if( i.le.20 ) goto 1
          i=i+1
10      continue
      call check( i,123 )
      return
      end
*
      subroutine test8
      integer i,j,k,l,ans(4)
      data ans/111,123,144,165/
      logical t1,t2,ptn1(4),ptn2(4)
      data ptn1/.true.,.true.,.false.,.false./
      data ptn2/.true.,.false.,.true.,.false./
      call getnum(i)
      do 100 l=1,4
        t1=ptn1(l)
        t2=ptn2(l)
1       continue
          i=i+1
          do 20 k=1,10
            i=i+1
            if( t1 ) goto 30
20        continue
30        do 10 j=1,10
            if( t2 .and. i.le.100 ) goto 1
            i=i+1
10        continue
        call check( i,ans(l) )
100   continue
      return
      end
*
      subroutine test9
      integer i,k
      call getnum(i)
10    continue
        i=i+1
        do 20 k=1,10
          i=i+1
          if( i*k .eq. 12 ) goto 30
20      continue
30    continue
          i=i+1
      if( i-14 ) 10,30,40
40    continue
      call check(i,25)
      return
      end
*
      subroutine test10
      integer i,k
      call getnum(i)
10    continue
        i=i+1
        do 20 k=1,10
          i=i+1
          if( i*k .eq. 12 ) goto 1
20      continue
1       continue
30    continue
          i=i+1
      if( i-14 ) 10,30,40
40    continue
      call check(i,25)
      return
      end
*
      subroutine test11
      integer i,k
      call getnum(i)
      k=i
      do 1 j=1,20
10      continue
          i=i+1
          k=i-1
30      continue
          i=i+1
          k=i+1
          if( k+i .eq. 2 ) goto 100
        if( i-14 ) 10,30,40
40      continue
        i=i+1
100     continue
1     continue
      call check(i,73)
      return
      end
*
      subroutine test12
      integer i,k
      call getnum(i)
      k=i
      do 1 j=1,20
10      continue
          i=i+1
          if( k+i .eq. 2 ) goto 100
          k=i-1
30      continue
          i=i+1
          k=i+1
        if( i-14 ) 10,30,40
40      continue
        i=i+1
100     continue
1     continue
      call check(i,73)
      return
      end
*
      subroutine test13
      integer i,k
      call getnum(i)
      do 1 j=1,10
        do 2 k=1,20
10        continue
            i=i+1
20        continue
            i=i+1
          goto( 10,20,40,50 ) i
40        continue
2       continue
        i=i-1
50      continue
1     continue
      call check(i,391)
      return
      end
*
      subroutine sub(*,*,*)
      integer n
      save    n
      data    n/0/
      n=n+1
      return n
      end
*
      subroutine check( n,i )
      integer           n,i
      logical switch
      common /com/switch
      if( n.ne.i ) then
        switch = .true.
      else
        switch = .false.
      endif
      return
      end
*
      subroutine getnum( n )
      integer           n
      n=1
      return
      end
