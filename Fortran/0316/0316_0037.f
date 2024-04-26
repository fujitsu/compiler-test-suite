      type tag
	integer   i
	integer   j
      end type
      type (tag) ::a
      integer ii,jj
      data a /tag(10,20)/
      data ii,jj /10,20/
      call check(a%i,ii)
      call check(a%j,jj)
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
