
      integer*4,dimension(0:-1),parameter ::i4a=-1
      integer*4,dimension(1) ::u,L,s,u2,L2,s2

      parameter(u=ubound(not(i4a)))
      parameter(L=lbound(not(i4a)))
      parameter(s=size(not(i4a)))

      u2=ubound(not(i4a))
      L2=lbound(not(i4a))
      s2=size(not(i4a))
      
      call check(u(1),u2(1))
      call check(L(1),L2(1))
      call check(s(1),s2(1))

      print *,'*** ok ***'
      end

      subroutine check(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        print *,i,it
        stop 1
      endif
      end
