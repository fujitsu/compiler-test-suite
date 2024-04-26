           type :: t1
             real, allocatable :: x1(:)
           end type t1
           type t2
             type(t1), allocatable :: t1compo
           end type t2
           type(t1) :: t1obj
           type(t2), allocatable :: t2obj
           real :: vec(2)
          vec = 1.0
          allocate(t2obj)
          t1obj%x1 = vec
          t2obj%t1compo = t1obj
          if (any(t2obj%t1compo%x1 /= 1.0)) print *,101
          print *,'pass'
        end

