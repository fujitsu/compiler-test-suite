      program main
      common /com/a,b,c,d,e
      dimension a(100) ,b(100)
      call sub(a)
      write(6,*) ' ***** ok ***** '
      stop
      end
      block data block1
      common /com/a,b,c,d,e
      real   a(100) ,b(100)
      data   a/100*5./,b/100*6./
      data   c/9/,d/10/,e/11/
      end
      subroutine sub(dim)
      dimension      dim(100)
      common /com/a,b,c,d,e
      real   a(100) ,b(100)
      real   const(10)/1,2,3,4,5,6,7,8,9,10/
      character*100 c1
      if( dim(100) .ne. 5 ) call ng
      do 1 i=0,9
        do 3 j=1,10
          a(i*10+j) = const(11-j)*15.*mod(e,d) + 1.+c + a(i*10+j)
          e=e+1
          e=e+1
3       continue
        do 2 j=1,10
          b(i*10+j) = const(j)+10.*e/d+(c*2.+i)*mod(e,d)
          call sub2()
          b(i*10+j) = b(i*10+j) + a(i*10+j) * a(32)
2       continue
1     continue
      do 4 i=1,100
        j=mod(b(i),9)
        c1(i:i) = char( j + ichar('a') )
4     continue
      write(6,*) c1
      return
      end
      subroutine ng
      write(6,*) ' ***** ng ***** '
      stop
      end
      subroutine sub2()
      common /com/a,b,c,d,e
      real   a(100) ,b(100)
      e = e+1
      return
      end
