      program a
      dimension b(100),c(100)
      b(50)=1.5
      c(50)=1.5
      call sub(b,e)
      call ent(c,f)
      if( f.eq.1.5 ) then
        write(6,*) ' ok1 '
      else
        write(6,*) ' ng1 '
      endif
      e=5000.
      call sub1(b,e)
      call ent1(b,f)
      if( f.eq.5000. ) then
        write(6,*) ' ok2 '
      else
        write(6,*) ' ng2 '
      endif
      call sub2(b)
      if( b(50).eq.4. ) then
        write(6,*) ' ok3 '
      else
        write(6,*) ' ng3 '
      endif
      stop
      end
      subroutine sub(a,b)
      dimension a(100),c(100)
      return
      entry ent(c,d)
      d=c(50)
      return
      end
      subroutine sub1(a,b)
      dimension a(100),c(100)
      a(50) = b
      return
      entry ent1(c,d)
      d = c(50)
      return
      end
      subroutine sub2(a)
      dimension a(100)
      a(50)=4.
      return
      end
