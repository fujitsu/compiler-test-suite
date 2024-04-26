      program main
      common i
      i=1
      n=i
      if(n.ne.1) then
        write(6,*) '*** ng ***'
        goto 1
      endif
      call sub
      n=i
      if(n.ne.2) then
        write(6,*) '*** ng ***'
        goto 1
      endif
      write(6,*) '*** ok ***'
    1 stop
      end
      subroutine sub
      common k
      l=k
      k=2
      return
      end
