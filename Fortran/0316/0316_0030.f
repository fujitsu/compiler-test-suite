
      type tag
	integer   i
	integer   j
      end type
      type (tag) ::t
      integer ii,jj
      parameter (t=tag(10,20))
      data ii,jj /10,20/
      call check(t%i,ii)
      call check(t%j,jj)
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
