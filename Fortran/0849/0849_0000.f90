module m1
   type :: UnlimitedEntity
      class (*), allocatable :: value
   contains
      procedure :: get_value
   end type UnlimitedEntity

   type :: StringWrap
     character(len=:), allocatable :: value
   end type StringWrap

contains
   function get_value(this) result(value)
      class (UnlimitedEntity), target, intent(in) :: this
      class (*), pointer :: value
      if (allocated(this%value)) then
         select type (q => this%value)
         type is (StringWrap)
            value => q%value
         end select
      end if
   end function get_value
end module m1
print *,'pass'
end
