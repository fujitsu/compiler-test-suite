module mod1
  type t1
     integer::a
   contains
  end type t1
  
  type base
     type(t1),allocatable::jj
     type(t1)::kk
   contains
  end type base

  type,extends(base) :: ty
     integer :: ii
  end type ty

contains
end module mod1

use mod1
class(base),allocatable :: calc(:,:)  
allocate(ty::calc(2,2))       
print *,'sngg825p : pass'
end
