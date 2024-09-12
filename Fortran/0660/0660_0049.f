      call ss
      print *,' *** pass ***'
      end 

      subroutine ss
      interface sub1
        subroutine suba()
        end subroutine
        subroutine subb(i)
        integer i
        end subroutine 
        subroutine subc(c)
        character  c
        end subroutine
      end interface

      interface subx
        subroutine subx()
        end subroutine
        subroutine suby(i)
        integer i
        end subroutine 
        subroutine subz(c)
        character  c
        end subroutine
      end interface

      interface sub1
        subroutine sube(r)
        real  r
        end subroutine
        subroutine subf(c)
        complex  c
        end subroutine 
        subroutine subg(l)
        logical  l  
        end subroutine
      end interface

      call sub1()
      call sub1(1)
      call sub1('c')
      call sub1(2.0)
      call sub1((3.0,0.0))
      call sub1(.true.)
      call subx()
      call subx(4)
      call subx('d')
      end
      subroutine suba()
      end
      subroutine subb(i)
      integer  i
      if (i.ne.1) call err('subb()')
      end
      subroutine subc(c)
      character  c
      if (c.ne.'c') call err('subc()')
      end
      subroutine sube(r)
      real  r
      if (r.ne.2.0) call err('sube()')
      end
      subroutine subf(c)
      complex  c
      if (c.ne.(3.0,0.0)) call err('subf()')
      end
      subroutine subg(l)
      logical  l
      if (l.neqv..true.) call err('subg()')
      end
      subroutine subx()
      end
      subroutine suby(i)
      integer  i
      if (i.ne.4) call err('suby()')
      end
      subroutine subz(c)
      character  c
      if (c.ne.'d') call err('subz()')
      end
      subroutine err(ch)
      character*(*)  ch
      print *,'error in ==> ',ch
      end
