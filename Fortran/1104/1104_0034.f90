     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:,:)
         class(base), intent(in) :: value(:,:)
         allocate(var, source=value)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var(:,:)
     type(ext), allocatable :: value(:,:)
     integer(8)::k11,k22,k23
     allocate(value(2,3))
     allocate(value(1,1)%name,source='ok1')
     allocate(value(2,2)%name,source='ok2')
     allocate(value(2,3)%name,source='ok3')
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var(1,1)%name(:)='111'
       var(2,2)%name(:)='222'
       var(2,3)%name(:)='333'
       k11=loc(var(1,1)%name)
       k22=loc(var(2,2)%name)
       k23=loc(var(2,3)%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value(1,1)%name(:)/='ok1') print *,1001
     if (value(2,2)%name(:)/='ok2') print *,1002
     if (value(2,3)%name(:)/='ok3') print *,1003
     if (k11==loc(value(1,1)%name)) print *,2001
     if (k22==loc(value(2,2)%name)) print *,2002
     if (k23==loc(value(2,3)%name)) print *,2003
     print *,'sngg611p : pass'
     end program

