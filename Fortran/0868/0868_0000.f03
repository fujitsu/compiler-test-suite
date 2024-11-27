module Mod_UnlimitedVector10

      type :: v_Wrapper
         class(*), allocatable :: item
      end type v_Wrapper

      type :: UnlimitedVector10
         private
         type(v_Wrapper) :: elements(10)
         integer :: vsize = 0
      contains
         procedure :: at
         procedure :: set
      end type UnlimitedVector10

      contains

      subroutine set(this, i, value)
         class(UnlimitedVector10), intent(inout) :: this
         integer, intent(in) :: i
         class(*), intent(in) :: value
         interface
            subroutine unlim_allocate(item, source)
               class(*), allocatable, intent(inout) :: item
               class(*), optional, intent(in) :: source
            end
         end interface
         call unlim_allocate(this%elements(i)%item, source= value)
         return
      end subroutine set

      function at(this, i) result(res)
         class(UnlimitedVector10), target, intent(in) :: this
         integer, intent(in) :: i
         class(*), pointer :: res
         res=>this%elements(i)%item

         select type(res)
            type is(integer)
            type is(real(kind=8))
         end select
      end function at

end module Mod_UnlimitedVector10

subroutine unlim_allocate(item, source)
   class(*), allocatable, intent(inout) :: item
   class(*), optional, intent(in) :: source

   select type(source)
      type is(integer)
         allocate(item, source= source)
      type is(real(kind=8))
         allocate(item, source= source)
   end select
end


program UVtest
   use Mod_UnlimitedVector10
   type (UnlimitedVector10) :: values
   integer i, loop
   real(kind=8) f
   class(*), allocatable :: valone
         interface
            subroutine unlim_allocate(item, source)
               class(*), allocatable, intent(inout) :: item
               class(*), optional, intent(in) :: source
            end
         end interface

   i = 12
   f = 34.0
   call values%set(1, i)
   call values%set(2, f)
   f = 56.0
   i = 78
   call values%set(3, f)
   call values%set(4, i)

   do loop = 1, 4
      call unlim_allocate(valone, source=values%at(loop))
      select type (valone)
      type is (integer)
        if (loop==2 .or. loop==3) print *,80000
      type is (real(kind=8))
      end select
      deallocate(valone)
   end do

   do loop = 1, 4
      select type (v => values%at(loop))
      type is (integer)
        if (loop==2 .or. loop==3) print *,80010
      type is (real(kind=8))
      end select
   end do

print *,'pass'
end program
