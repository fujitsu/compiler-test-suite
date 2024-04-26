
      integer*4,dimension(0:-1),parameter ::i4a=1
      integer*4,dimension(0:-1) ::i4,j4
      integer*4,dimension(1) ::u,L,s,u2,L2,s2

      parameter(u=ubound( abs(i4a)))
      parameter(L=lbound(iabs(i4a)))
      parameter(s=size( abs(i4a)))

      u2 = ubound( abs(i4a))
      L2 = lbound(iabs(i4a))
      s2 = size  ( abs(i4a))
      
      call checki(u(1), u2(1))
      call checki(L(1), L2(1))
      call checki(s(1), s2(1))

      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
