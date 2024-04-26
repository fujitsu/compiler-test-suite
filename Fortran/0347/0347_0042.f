      program main
      real    * 4  a(100),tw1(100),tw2(100),tw3(100)
      data         tw1,tw2,tw3/300*1/
      integer      j/1/
      do 10 i=1,100
        tw1(i) = tw1(i) * 2
        tw2(i) = tw2(i) + j
        goto 100
    1   call sub(a(i))
        goto 1
  100   tw3(j)=sqrt(float(j))
        j=j+1
   10 continue
      write(6,*) '--- tw1 ---'
      write(6,201) tw1
      write(6,*) '--- tw2 ---'
      write(6,201) tw2
      write(6,*) '--- tw3 ---'
      write(6,201) tw3
  201 format(5(1x,f14.7))
      end
      subroutine sub(x)
      real x(100)
      x(1)=x(1)
      return
      end
