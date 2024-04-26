*
      program nrgl06
      integer dim(10,10)
*
      call ptn1(dim,10)
      call ptn2(dim,10)
      call ptn3(dim,10)
      call ptn4(dim,10)
      if( dim(5,5) .eq. 89 ) then
        write( 6,* ) ' ok '
      else
        write( 6,* ) ' ng '
      endif
      stop
      end
*
      subroutine ptn1(dim,limt)
      integer dim(limt,limt)
      integer i,j,limt
      dim = 0
      do 1 i=1,limt
        do 2 j=2,limt
          dim(j,i)=5
2       continue
1     continue
      return
      end
*
      subroutine ptn2(dim,limt)
      integer dim(limt,limt)
      integer i,j,limt
      do 3 j=1,limt
        do 4 i=1,limt
          if( i*j .eq. 999 ) goto 6
          dim(i,j) = dim(i,j)+1
4       continue
        do 5 i=1,limt
          if( i*j .eq. 201 ) goto 6
          dim(i,j) = dim(i,j)+2
5       continue
6       continue
3     continue
      return
      end
*
      subroutine ptn3(dim,limt)
      integer dim(limt,limt)
      integer i,j,limt,n
      n=0
      do 1 i=1,limt
        do 2 j=1,limt
          n=n+1
          if( i*j .eq. 1 ) goto 3
          dim(i,j)=0
          if( i*j .eq. 400 ) goto 3
          dim(i,j)=0
2       continue
3       continue
1     continue
      return
      end
*
      subroutine ptn4(dim,limt)
      integer dim(limt,limt)
      integer limt,i,j,sum
      sum=0
      do 1 i=1,limt
        do 2 j=1,limt
          sum=sum+1
          if( sum.eq.1000 ) goto 3
          dim(i,j)=sum
          sum=sum+1
          if( sum.eq.2000 ) goto 3
2       continue
1     continue
3     continue
      return
      end
