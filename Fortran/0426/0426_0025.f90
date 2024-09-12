 module mm
  public xyz
  type xyz
        integer :: a
          contains
          procedure :: prc
       end type xyz
       contains
        subroutine prc( this )
        class(xyz),intent(out):: this
        this%a = 1
       end subroutine
     end
     module m001
      use mm,only : xyz
      private
        type (xyz)   :: v3
      end

      module m1
      use m001
      end module

      module m2
      use m1
      end

print *,'pass'
end
