module m1
   type :: UnlimitedEntity
      class (*), allocatable :: value(:)
   contains
      procedure :: get_value
   end type UnlimitedEntity

   type :: StringWrap
     character(len=:), allocatable :: value(:)
   end type StringWrap

contains
   function get_value(this) result(value)
      class (UnlimitedEntity), target, intent(in) :: this
      class (*), pointer :: value(:)
      if (allocated(this%value)) then
         select type (q => this%value(2))
         type is (StringWrap)
            value => q%value
         end select
      end if
   end function get_value
end module m1
module m2
contains
subroutine sub(w)
class(*)::w(:)
k=0
select type(w)
  type is (character(*))
    if (any(w/='123')) print *,1001
    if (len(w)/=3) print *,100121
    if (size(w)/=2) print *,100221
    k=1
end select
if (k/=1) print *,901
end
end
subroutine s1
use m1
use m2

 type(UnlimitedEntity),target :: x
  allocate( StringWrap :: x%value(2) )
  select type(z=>x%value)
     type is(StringWrap)
        allocate(z(1)%value(2),source='123')
        allocate(z(2)%value(2),source='123')
  end select

 call sub(x%get_value() )
end
call s1
print *,'pass'
end
