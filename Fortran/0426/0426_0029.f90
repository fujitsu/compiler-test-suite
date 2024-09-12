 module mm
  private
  public:: xyz
  type xyz
        integer :: a=2
          contains
          procedure :: prc
       end type xyz
       contains
        subroutine prc( this )
        class(xyz):: this
        this%a = 1
       end subroutine
     end
     module m001
      use mm
      private
        type (xyz),public   :: v3
      end

      module m1
      use m001
      end module

      module m2
      use m1
      end
use m2
if (v3%a/=2)print *,201

print *,'pass'
end
