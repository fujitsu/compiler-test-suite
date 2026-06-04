    module mod 
     interface
module subroutine sss
      end
  end interface
      type  :: ty_1                             ! 1)
       integer::x1
      end type
      type, extends(ty_1) :: ty_2
       integer::x2
      end type
      end
      
submodule(mod) nmod
      type, extends(ty_2) :: ty_3               ! 12) 13)
       integer::x3
      end type
contains
module subroutine sss
  class(ty_3),allocatable:: x
   x%x1=1
   x%x2=1
   x%x3=1
 end 
end
      print *,'sngg360o : pass'
      end 
