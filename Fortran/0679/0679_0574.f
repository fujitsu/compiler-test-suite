      call sub01
      call sub02
      call sub03
      call sub04
      stop
      end

      subroutine sub01
      logical*4 a(6),b(6),c(6),d(6),e(6),p,q,x(6),z(6)
      data p,q/.true.,.false./
      data x  /2*.true.,2*.false.,.true.,.false./
      data z  /2*.false.,2*.true.,.true.,.false./
      data a/6*.false./,b/6*.false./c/6*.false./,d/6*.false./,
     1     e/6*.false./
      do 10 i=1,6
        a(i) = z(i).eqv..true.
        b(i) = z(i).eqv..false.
        c(i) = z(i).eqv.p
        d(i) = z(i).eqv.q
        e(i) = z(i).eqv.x(i)
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
      integer*4 n(6),m(6),l(6)
      data n/2*1,2*0,1,0/,m/2*0,2*1,1,0/,l/6*0/
      do 20 j=1,6
        if ( n(j).eq.1.eqv.m(j).eq.0) then
           l(j) = 1
        else
           l(j) = 2
        endif
 20   continue
      write(6,300) 'l=',l
 300  format(1h ,2x,a2,6i2)
      return
      end

      subroutine sub03
      logical*4 a(6),b(6),c(6),d(6),e(6),p,q,x(6),z(6)
      integer*4 n(6),m(6),l(6)
      data p,q/.true.,.false./
      data x  /2*.true.,2*.false.,.true.,.false./
      data z  /2*.false.,2*.true.,.true.,.false./
      data a/6*.false./,b/6*.false./c/6*.false./,d/6*.false./,
     1     e/6*.false./
      do 10 i=1,6
        a(i) = z(i).neqv..true.
        b(i) = z(i).neqv..false.
        c(i) = z(i).neqv.p
        d(i) = z(i).neqv.q
        e(i) = z(i).neqv.x(i)
 10   continue
      write(6,200) 'a=',a
      write(6,200) 'b=',b
      write(6,200) 'c=',c
      write(6,200) 'd=',d
      write(6,200) 'e=',e
 200  format(1h ,2x,a2,6l2)
      return
      end

      subroutine sub04
      integer*4 n(6),m(6),l(6)
      data n/2*1,2*0,1,0/,m/2*0,2*1,1,0/,l/6*0/
      do 20 j=1,6
        if ( n(j).eq.1.neqv.m(j).eq.0) then
           l(j) = 1
        else
           l(j) = 2
        endif
 20   continue
      write(6,300) 'l=',l
 300  format(1h ,2x,a2,6i2)
      return
      end
