module MAPL_AbstractMeterNode
   implicit none
   private
   public :: AbstractMeterNode
   type, abstract :: AbstractMeterNode
      private
   contains
      procedure(i_get_name), deferred :: get_name
      procedure(i_add_child), deferred :: add_child
   end type AbstractMeterNode
   abstract interface
      subroutine i_add_child(this, name)
         import AbstractMeterNode
         class(AbstractMeterNode), target, intent(inout) :: this
         character(*), intent(in) :: name
      end subroutine i_add_child
      function i_get_name(this) result(name)
         import AbstractMeterNode
         character(:), pointer :: name
         class(AbstractMeterNode), target, intent(in) :: this
      end function i_get_name
   end interface
end module MAPL_AbstractMeterNode

module MAPL_MeterNodeVector
   use MAPL_AbstractMeterNode
      implicit none
      private
      public :: MeterNodeVector
      type :: v_Wrapper
         class (AbstractMeterNode) , allocatable :: item
      end type v_Wrapper
      type :: MeterNodeVector
         private
         type(v_Wrapper), allocatable :: elements(:)
      contains
         procedure :: push_back => v_push_back
         procedure :: resize_size => v_resize_size
      end type MeterNodeVector
   contains
      subroutine v_push_back(this, value)
         class(MeterNodeVector), intent(inout) :: this
         class (AbstractMeterNode) , intent(in) :: value

         call this%resize_size(value)
         return
      end subroutine v_push_back
      subroutine v_resize_size(this, value)
         class(MeterNodeVector), intent(inout) :: this
         class (AbstractMeterNode) , optional, intent(in) :: value
         character(100)::x_name
  interface
subroutine generate_allocate(item, source)
  use MAPL_AbstractMeterNode
 class (AbstractMeterNode) ,allocatable, intent(inout) :: item
 class (AbstractMeterNode) , optional, intent(in) :: source
end subroutine 
  end interface
         if (.not.allocated(this%elements)) then
           allocate(this%elements(1))
         end if
         !print'("source:0x",Z16.16)',loc(value)
         !write(7,'(Z16.16)')loc(value)
         x_name  =value%get_name()
         write(8,'(a)') trim(x_name)
         !allocate(this%elements(1)%item, source= value)
  !      allocate(this%elements(1)%item, source= value)
  call generate_allocate(this%elements(1)%item, source= value)
         !print'("dest  :0xme",Z16.16)',loc(this%elements(1)%item)
         !print'(" name:",A)',this%elements(1)%item%get_name()
         !write(7,",Z16.16)',loc(this%elements(1)%item)
!print *,'getname call '
         x_name = this%elements(1)%item%get_name()
         write(8,'(a)') trim(x_name)
         return
      end subroutine v_resize_size
end module MAPL_MeterNodeVector

module MAPL_MeterNode
   use MAPL_AbstractMeterNode
   use MAPL_MeterNodeVector
   implicit none
   private
   public :: MeterNode
   type, extends(AbstractMeterNode) :: MeterNode
      private
      character(:), allocatable :: name
      type (MeterNodeVector) :: children
   contains
      procedure :: get_name
      procedure :: add_child
   end type MeterNode
   interface MeterNode
      module procedure new_MeterNode
   end interface MeterNode
contains
   function new_MeterNode(name) result(tree)
      type (MeterNode) :: tree
      character(*), intent(in) :: name
      tree%name = name
   end function new_MeterNode
   function get_name(this) result(name)
      character(:), pointer :: name
      class (MeterNode), target, intent(in) :: this
!print *,'getname start'
      name => this%name
      !print'(" &node%name:0x",Z16.16)',loc(this%name)
      write(7,'(Z16.16)')loc(this%name)
   end function get_name
   subroutine add_child(this, name)
      class(MeterNode), target, intent(inout) :: this
      character(*), intent(in) :: name
      type (MeterNode) :: tmp
      tmp = MeterNode(name)
      call this%children%push_back(tmp)
   end subroutine add_child
end module MAPL_MeterNode
subroutine s1
  use MAPL_MeterNode
  type(MeterNode)::node
  node=MeterNode("all")
  call node%add_child("GetSetService")
end
subroutine generate_allocate(item, source)
  use MAPL_AbstractMeterNode
  use MAPL_MeterNode
 class (AbstractMeterNode) ,allocatable, intent(inout) :: item
 class (AbstractMeterNode) , optional, intent(in) :: source
  !allocate(this%elements(1)%item, source= value)
   select type(source)
      type is(MeterNode)
         allocate(item, source= source)
      class default
         stop 999
   end select
end 

call s1
call chk
print *,'sngg183k : pass'
end 
subroutine chk
character(16)::x1,x2
rewind 7
read(7,'(a)') x1
read(7,'(a)') x2
if (x1==x2) print *,2009
end
