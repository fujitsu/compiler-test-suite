      program main
      common ichk
      ichk=1
      jj=2
      kk=3
      l1=ichk+jj
      m1=kk+jj
       call sub
      l2=ichk+jj
      m2=kk+jj
      if(l2.ne.7) then
        write(6,*) '*** ng1 ***'
      endif
      if(l2.eq.3) then
        write(6,*) '*** ng2 ***'
        goto 1
      endif
      write(6,*) 'l1=',l1
      write(6,*) 'l2=',l2
      write(6,*) 'm1=',m1
      write(6,*) 'm2=',m2
      write(6,*) '*** ok ***'
    1 stop
      end
      subroutine sub
      common k
      l=k
      k=5
      return
      end
