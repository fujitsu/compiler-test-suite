      call sub01
      call sub02
      stop
      end

      subroutine sub01
      logical*4 a(6),b(6),c(6),d(6),e(6),p,q,x(6)
      data p,q/.true.,.false./
      data x  /3*.true.,3*.false./
      data a/6*.false./,b/6*.false./c/6*.false./,d/6*.false./,
     1     e/6*.false./

      do 10 i=1,6
        a(i) = .not..true.
        b(i) = .not..false.
        c(i) = .not.p
        d(i) = .not.q
        e(i) = .not.x(i)
 10   continue
      write(6,200) 'a=',a
      write(6,200) 'b=',b
      write(6,200) 'c=',c
      write(6,200) 'd=',d
      write(6,200) 'e=',e
 200  format(1h ,2x,a2,6l2)
      return
      end

      subroutine sub02
      real*8 a(6)
      real*4 b(6)
      data b/ 1.0, 1.234567, 1.234567890,
     1       -1.0,-1.234567,-1.234567890/
      data a/6*0.0d0/
      do 10 i=1,6
        a(i) = dble( b(i) )
   10 continue
      do 20 j=1,6
        write(6,200) 'a(',j,')=',a(j)
   20 continue
 200  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end
