     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name(:,:,:)
       end type
       

       type :: base
       end type base
       type, extends(base) :: ext
          type (e),allocatable::bv(:,:,:)
          class (b),allocatable::bv2(:,:,:)
       end type ext
type x
       class (base), pointer     :: var(:,:,:)
end type
type(x)::v(2,2,2)
     contains

       subroutine s1(value)
         class (base), intent(in) :: value(:,:,:)
kk=1
         allocate(v(2,2,2)%var, source=value,stat=kk)
if (kk/=0) print *,601
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value(:,:,:)
     integer(8)::k1,k2
     allocate(value(2,2,2))
     allocate(e::value(2,2,2)%bv(2,2,2))
     allocate(e::value(2,2,2)%bv2(2,2,2))
     associate (p=>value(2,2,2)%bv)
       allocate(p(2,2,2)%name(2,2,2),source='ok')
     end associate 
     select type(p=>value(2,2,2)%bv2)
     type is(e)
       allocate(p(2,2,2)%name(2,2,2),source='ok')
     end select
     call s1(value) 
     k=0
     select type(w=>v(2,2,2)%var)
     type is(ext)
     associate (p=>w(2,2,2)%bv)
       p(2,2,2)%name(2,2,2)(:)='11'
       k1=loc(p(2,2,2)%name(2,2,2))
     end associate 
       select type(p=>w(2,2,2)%bv2)
       type is(e)
       p(2,2,2)%name(2,2,2)(:)='11'
       k1=loc(p(2,2,2)%name(2,2,2))
       k=1
     end select
     end select
     if (k/=1) print *,1002
     associate (p=>value(2,2,2)%bv)
     if (p    (2,2,2)%name(2,2,2)(:)/='ok') print *,1001
       k2=              loc(p    (2,2,2)%name(2,2,2))
     end associate 
     select type(p=>value(2,2,2)%bv2)
     type is(e)
     if (p    (2,2,2)%name(2,2,2)(:)/='ok') print *,1002
       k2=              loc(p    (2,2,2)%name(2,2,2))
     end select
     if (k1==k2) print *,2002
end
call s
     print *,'sngg347q : pass'
     end program

