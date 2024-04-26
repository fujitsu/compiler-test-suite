      type element
         integer, pointer, dimension(:)::p
      end type
      type (element) q(5)
      integer, target, dimension(25)::t

      n = 5
      i=1
         q(1)%p => t((i-1)*n + 1:i*n)
      print *,'pass'
      end

