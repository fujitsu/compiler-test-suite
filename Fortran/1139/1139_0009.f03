module mod
  type ty2
     integer::n1
     character(:),allocatable::name
  end type
  type ty1
     class(ty2),allocatable::item
  end type
  type ty0
     class(ty1),allocatable::elements(:)
  end type
contains
subroutine s1         (this, value)
       class (ty0), intent(inout) :: this
       class (ty2) , intent(in) :: value
 i=1
  allocate(this%elements(i)%item, source= value)
!print '(z16.16)',loc(this%elements(i)%item)
!print '(z16.16)',loc(value)
write(19,'(z16.16)')loc(this%elements(i)%item%name)
write(19,'(z16.16)')loc(value%name)
end subroutine
end
  use mod
       type  (ty0) :: var
       type  (ty2) ::value
allocate(value%name,source='test')
allocate(var%elements(2))
call s1(var, value)
call chk
print *,'sngg171k : pass'
end
subroutine chk
character(16)::r1,r2
rewind 19
read(19,'(a)') r1
read(19,'(a)') r2
if (r1==r2)print *,1001
end
