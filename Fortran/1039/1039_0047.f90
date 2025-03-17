module m1
     type crystal_type
       integer  :: x
     end type
contains
    function unit_cell_offset(self,g) result(res)
     type(crystal_type) :: self
     integer, dimension(:,:) :: g
     integer(kind=kind(1)), dimension(3) :: res
     res = sum(g,dim=2)/size(g,2)
    end function
end
use m1
     integer, dimension(3,2) :: g
     integer, dimension(3) :: gg
     type(crystal_type) :: self
    g=reshape((/11,12,13,14,15,16/),(/3,2/))
    gg=unit_cell_offset(self,g)
    if (any(gg/=(/12,13,14/)))print *,'error'
    print *,'pass'
end
