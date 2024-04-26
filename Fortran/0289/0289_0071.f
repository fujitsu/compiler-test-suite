      complex function fun(n)
      real,allocatable,dimension(:,:,:)::a
      allocate(a(n,n,n))
      a(1:n,1:n,1:n) = 1.0
      fun = (1.0,2.0)
      end
      complex fun
      if( fun(1) == (1.0,2.0) ) then
        print *,' OK '
      else
        print *,' NG '
      endif
      end
