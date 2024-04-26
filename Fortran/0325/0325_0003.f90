module mod00
contains
 subroutine sub()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end

module mod01
contains
 subroutine sub01()
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
   end subroutine
 end subroutine
end

module mod02
contains
 subroutine sub01()
  !$OMP parallel
  !$OMP end parallel
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
   end subroutine
   subroutine isub02()
  !$OMP parallel
  !$OMP end parallel
   end subroutine
 end subroutine
end

module mod03
contains
 subroutine sub01()
  !$OMP parallel
  !$OMP end parallel
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
   subroutine isub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
   subroutine isub03()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
 end subroutine
end

module mod04
contains
 subroutine sub01()
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
   end subroutine
 end subroutine
 subroutine sub02()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end

module mod05
contains
 subroutine sub01()
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
   end subroutine
   subroutine isub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
 end subroutine
 subroutine sub02()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
 end subroutine
end

module mod06
contains
 subroutine sub01()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
   subroutine isub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
   subroutine isub03()
   end subroutine
 end subroutine
 subroutine sub02()
 end subroutine
end

module mod07
contains
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
 subroutine sub01()
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
   end subroutine
 end subroutine
end

module mod08
contains
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
 subroutine sub01()
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
   end subroutine
   subroutine isub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
 end subroutine
end

module mod09
contains
 subroutine sub02()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
 end subroutine
 subroutine sub01()
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP end parallel
   end subroutine
   subroutine isub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
   subroutine isub03()
  !$OMP parallel
  !$OMP end parallel
   end subroutine
 end subroutine
end



print *,'pass'
end
