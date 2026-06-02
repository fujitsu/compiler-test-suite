     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name(:,:,:)
       end type
       

       type :: base
       end type base
       type, extends(base) :: ext
          class(*),allocatable::bv(:,:,:)
       end type ext
type x
       type (ext ), pointer     :: var(:,:,:)
end type
type (x)::v(2,2,2)

     contains

       subroutine s1(value)
         class(ext), intent(in) :: value(:,:,:)
kk=1
         allocate(v(2,2,2)%var, source=value,stat=kk)
if (kk/=0) print *,1071
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value(:,:,:)
     integer(8)::k1,k2
     allocate(value(2,2,2))
     allocate(e::value(2,2,2)%bv(2,2,2))
     select type(p=>value(2,2,2)%bv)
     type is(e)
       allocate(p(2,2,2)%name(2,2,2),source='ok')
     end select
     call s1(value) 
     k=0
     !select type(var)
     !type is(ext)
       select type(p=>v(2,2,2)%var(2,2,2)%bv)
       type is(e)
       p(2,2,2)%name(2,2,2)(:)='11'
       k1=loc(p(2,2,2)%name(2,2,2))
       k=1
     end select
     !end select
     if (k/=1) print *,1002
     select type(p=>value(2,2,2)%bv)
     type is(e)
     if (p    (2,2,2)%name(2,2,2)(:)/='ok') print *,1001
       k2=              loc(p    (2,2,2)%name(2,2,2))
     end select
     if (k1==k2) print *,2002
end
call s
     print *,'sngg422q : pass'
     end program

