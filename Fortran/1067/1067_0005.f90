module m0
interface
module subroutine ss
end
end interface
end
submodule (m0) m1 
  type x0
    integer::x01
  end type
  type,extends(x0)::x1                 ! 2)
    integer::x11
  end type
interface
 module subroutine  chk(x)                    !12-1-2)
   class(x0),intent(in)::x
 end
module subroutine s0(v2)                       ! 8), 12-3-1)
class(x1),allocatable:: v2           !11)           
 end
module subroutine s1(d)                        ! 4) , 6)
class(x1),allocatable:: d               ! 6)
end 
end interface
contains
 module subroutine  chk(x)                    !12-1-2)
   class(x0),intent(in)::x
   select type(x)                      !12-1-3)
    type is(x1)
    class default
      print *,'error-1'
   end select
 end 
end

submodule (m0:m1)  d_mod 
contains 
module subroutine s1(d)                        ! 4) , 6)
class(x1),allocatable:: d               ! 6)
end 
end

submodule (m0:d_mod)  m2 
contains
module subroutine s0(v2)                       ! 8), 12-3-1)
class(x1),allocatable:: v1,v2           !11)           
allocate(v1)                            !12-1-1)
call chk( v1 )                          !12-1-2)
!
if (.not.same_type_as(v1,v2)) print *,'error-2' !12)-2
!
select type(v2)                         !12-3-3)
 type is(x1)
 class default
   print *,'error-3'
end select
end 
module subroutine ss
class(x1),allocatable:: v2
allocate(v2)
call s0(v2)
end 
end

use m0
call ss

print *,'sngg390o : pass'
end
