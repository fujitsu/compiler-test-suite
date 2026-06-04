     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name
       end type
       

       type :: base
          class (b),allocatable::bv3
       end type base
       type, extends(base) :: ext
          type (e),allocatable  ::bv
          class (b),allocatable ::bv2
          type(e):: bv4
       end type ext
       class (base), pointer     :: var

     contains

       subroutine s1(value)
         class (base), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     allocate(value)
     allocate(e::value%bv)
     allocate(e::value%bv2)
     allocate(e::value%bv3)
     associate (p=>value%bv)
       allocate(p%name,source='ok')
     end associate 
     select type(p=>value%bv2)
     type is(e)
       allocate(p%name,source='ok')
     end select
     select type(p=>value%bv3)
     type is(e)
       allocate(p%name,source='ok')
     end select
     allocate(value%bv4%name,source='ok')
     call s1(value) 
!$omp parallel
!$omp do firstprivate(var) private(k)
  do n=1,8
     k=0
     select type(var)
     type is(ext)
     associate (p=>var%bv)
       p%name(:)='11'
     end associate 
       select type(p=>var%bv3)
       type is(e)
       p%name(:)='11'
     end select
       select type(p=>var%bv2)
       type is(e)
       p%name(:)='11'
       k=1
     end select
       var%bv4%name='11'
     end select
     if (k/=1) print *,100211
  end do
!$omp end do
!$omp end parallel
     associate (p=>value%bv)
     if (p    %name(:)/='ok') print *,1001,p    %name(:)
     end associate 
     select type(p=>value%bv3)
     type is(e)
     if (p    %name(:)/='ok') print *,1003
     end select
     select type(p=>value%bv2)
     type is(e)
     if (p    %name(:)/='ok') print *,1002
     end select
       if (value%bv4%name/='ok')  print *,1004
     k=0
     select type(var)
     type is(ext)
     associate (p=>var%bv)
     if (p    %name(:)/='11') print *,3001
     end associate 
       select type(p=>var%bv3)
       type is(e)
     if (p    %name(:)/='11') print *,3002
     end select
       select type(p=>var%bv2)
       type is(e)
     if (p    %name(:)/='11') print *,3003
       k=1
     end select
       if (var%bv4%name/='11')  print *,3004
     end select
     if (k/=1) print *,3302
end
call s
     print *,'sngg453q : pass'
     end program

