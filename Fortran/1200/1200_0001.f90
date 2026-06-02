     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name(:,:,:)
       end type
       

       type :: base
          class (b),allocatable::bv3(:,:,:)
       end type base
       type, extends(base) :: ext
          type (e),allocatable  ::bv(:,:,:)
          class (b),allocatable ::bv2(:,:,:)
          type(e):: bv4(2,2,2)
       end type ext
       class (base), pointer     :: var(:,:,:)

     contains

       subroutine s1(value)
         class (base), intent(in) :: value(:,:,:)
         allocate(var, source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value(:,:,:)
     allocate(value(2,2,2))
     allocate(e::value(2,2,2)%bv(2,2,2))
     allocate(e::value(2,2,2)%bv2(2,2,2))
     allocate(e::value(2,2,2)%bv3(2,2,2))
     associate (p=>value(2,2,2)%bv)
       allocate(p(2,2,2)%name(2,2,2),source='ok')
     end associate 
     select type(p=>value(2,2,2)%bv2)
     type is(e)
       allocate(p(2,2,2)%name(2,2,2),source='ok')
     end select
     select type(p=>value(2,2,2)%bv3)
     type is(e)
       allocate(p(2,2,2)%name(2,2,2),source='ok')
     end select
     allocate(value(2,2,2)%bv4(2,2,2)%name(2,2,2),source='ok')
     call s1(value) 
!$omp parallel
!$omp do firstprivate(var) private(k)
  do n=1,8
     k=0
     select type(var)
     type is(ext)
     associate (p=>var(2,2,2)%bv)
       p(2,2,2)%name(2,2,2)(:)='11'
     end associate 
       select type(p=>var(2,2,2)%bv3)
       type is(e)
       p(2,2,2)%name(2,2,2)(:)='11'
     end select
       select type(p=>var(2,2,2)%bv2)
       type is(e)
       p(2,2,2)%name(2,2,2)(:)='11'
       k=1
     end select
       var(2,2,2)%bv4(2,2,2)%name(2,2,2)='11'
     end select
     if (k/=1) print *,100211
  end do
!$omp end do
!$omp end parallel
     associate (p=>value(2,2,2)%bv)
     if (p    (2,2,2)%name(2,2,2)(:)/='ok') print *,1001
     end associate 
     select type(p=>value(2,2,2)%bv3)
     type is(e)
     if (p    (2,2,2)%name(2,2,2)(:)/='ok') print *,1003
     end select
     select type(p=>value(2,2,2)%bv2)
     type is(e)
     if (p    (2,2,2)%name(2,2,2)(:)/='ok') print *,1002
     end select
       if (value(2,2,2)%bv4(2,2,2)%name(2,2,2)/='ok')  print *,1004
     k=0
     select type(var)
     type is(ext)
     associate (p=>var(2,2,2)%bv)
     if (p    (2,2,2)%name(2,2,2)(:)/='11') print *,3001
     end associate 
       select type(p=>var(2,2,2)%bv3)
       type is(e)
     if (p    (2,2,2)%name(2,2,2)(:)/='11') print *,3002
     end select
       select type(p=>var(2,2,2)%bv2)
       type is(e)
     if (p    (2,2,2)%name(2,2,2)(:)/='11') print *,3003
       k=1
     end select
       if (var(2,2,2)%bv4(2,2,2)%name(2,2,2)/='11')  print *,3004
     end select
     if (k/=1) print *,3302
end
call s
     print *,'sngg462q : pass'
     end program

