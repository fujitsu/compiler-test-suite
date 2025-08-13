call test01()
call test02()
print *,'pass'
end

subroutine test01()
type ty1  ; integer ::a =1 ; end type  ;
type ty2
 type(ty1),allocatable,dimension(:) :: al
end type
type(ty2) :: str
allocate(str%al(10))
str%al=ty1(1)
write(13,*) str%al
str%al=str%al
call sub(str%al)
deallocate(str%al)
contains
subroutine sub(sss)
type(ty1) :: sss(:)
sss=ty1(10)
end subroutine
end

subroutine test02()
end

module Class_CloudMaterial

   type CloudMaterial
      real(8) :: temp
   end type CloudMaterial

   interface assignment (=)
      module procedure CloudMaterial_Assignment
   end interface

contains

   subroutine CloudMaterial_Assignment(r1,r2)

      type(CloudMaterial), intent(in)  :: r2
      type(CloudMaterial), intent(inout) :: r1
      r1%temp=r2%temp
   end subroutine CloudMaterial_Assignment

end module Class_CloudMaterial

module Class_CloudMatTab

   use Class_CloudMaterial

   type CloudMatTab
      type (CloudMaterial), dimension(:), ALLOCATABLE :: CloudMatTData
   end type CloudMatTab

   interface assignment (=)
      module procedure CloudMatTab_Assignment
   end interface

contains

   subroutine CloudMatTab_Assignment(r1,r2)

      type(CloudMatTab), intent(in)  :: r2
      type(CloudMatTab), intent(inout) :: r1

      integer :: n

      if(ALLOCATED(r1%CloudMatTData))then
         call CloudMatTab_Dealloc(r1)
      end if

      n=size(r2%CloudMatTData)
      call CloudMatTab_Alloc(r1,n)

      r1%CloudMatTData=r2%CloudMatTData

   end subroutine CloudMatTab_Assignment
subroutine CloudMatTab_Alloc(r1,n)
      type(CloudMatTab),optional :: r1
      integer,optional ::n
end subroutine

subroutine CloudMatTab_Dealloc(r1)
      type(CloudMatTab),optional :: r1
end subroutine
end module Class_CloudMatTab
