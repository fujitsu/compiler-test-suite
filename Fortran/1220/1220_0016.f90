subroutine s1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n
  end type
  type ,extends(t)::te
     integer(8)::dx
  end type

  class(t),allocatable::v,w
    allocate(te::w)

    v=w

end
call s1()
     print *,'sngg952s : pass'
     end
