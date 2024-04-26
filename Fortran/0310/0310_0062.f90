      real :: a=1.
      integer (kind=8)::b=2
      call s(max(a,b))
      contains 
        subroutine s(x)
          if (x == 2.00000000 ) print *,"*** ok ***"
        end subroutine
      end
