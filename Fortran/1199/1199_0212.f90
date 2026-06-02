     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:,:,:)
       end type ext
type x
       type (ext), pointer     :: var(:,:,:)
       type (ext), allocatable :: v(:,:,:)
end type
type(x)::r(2,2,2)
     contains

       subroutine s1(value)
         class(ext), intent(in) :: value(:,:,:)
         kk=1
         allocate(r(2,2,2)%var, r(2,2,2)%v,source=value,stat=kk)
         if (kk/=0) print *,101
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value(:,:,:)
     integer(8)::k1,k2
     allocate(value(2,2,2))
     allocate(value(2,2,2)%name(2,2,2),source='ok')
     call s1(value) 
     k=0
     !select type(w=>r(2,2,2)%var)
     !type is(ext)
       r(2,2,2)%var (2,2,2)%name(2,2,2)(:)='11'
       k1=loc(r(2,2,2)%var  (2,2,2)%name(2,2,2))
       k=1
     !end select
     if (k/=1) print *,1002
     if (value(2,2,2)%name(2,2,2)(:)/='ok') print *,1001
     if (r(2,2,2)%v(2,2,2)%name(2,2,2)(:)/='ok') print *,1002
       k2=              loc(value(2,2,2)%name(2,2,2))
     if (k1==k2) print *,2002
end
call s
     print *,'sngg355q : pass'
     end program

