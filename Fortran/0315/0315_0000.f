      program main
      integer a,b,c,d
      call sub(a,b,c,d)
      if (((a.eq.1).and.(b.eq.2)).and.((c.eq.3).and.(d.eq.4)))then
        print *,'###       OK       ###'
      else
        print *,'###       NG       ###'
      end if
      stop
      end

      subroutine sub(as,bs,cs,ds)
      integer as,bs,cs,ds
      as=1
      bs=2
      cs=3
      ds=4
      return
      end
