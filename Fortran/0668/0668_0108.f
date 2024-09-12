      integer*4  a(20),b(20),fun,funabc
      integer*2  h2(20)
      data  a,b/20*1,20*2/,h2/20*1/,nn/19/,mm/2/
      h2(10)= 0
      do 10 i=mm,nn-1,2
        if (h2(i).eq.1) then
          a(i)=a(i-1)*b(i)
        endif
        call subxyz(b(i))
  10  continue
      call sub1(a(20),b(20))
      do 20 i=2,nn+1
        if (a(i).eq.0) goto 21
          a(i)=a(i)+b(i)
          b(i)=funabc(a(i))
  20  continue
  21  continue
      b(1)=fun(a(1))
      write(6,*) a
      write(6,*) b
      stop
      end
      subroutine sub1(m,n)
      m=m+n
      call subxyz(m)
      return
      end
      subroutine subxyz(m)
      m=m*2.
      return
      end
      function fun(x)
      integer*4 x,y,fun,funabc
      x=x+1
      y=funabc(x)
      fun=y
      return
      end
      function funabc(x)
      integer*4 x,funabc
      x=x**2
      funabc=x
      return
      end
