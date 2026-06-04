     module mod
       type zbase
       end type
    
       type,extends(zbase) ::zext
          character(:),allocatable::name
       end type

       type :: base
       end type base

       type, extends(base) :: ext
         integer(8):: x
         class(zbase),allocatable::w(:)
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:)
         class(base), intent(in) :: value(:) 
         allocate(var, source=value)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var(:)
     type(ext), allocatable :: value(:)
     integer(8)::k1(4),k2(4)
     allocate(value(2))
     allocate(zext::value(1)%w(2))
     allocate(zext::value(2)%w(2))
     select type (p=>value(1)%w)
     type is(zext)
     allocate(p         (1)%name,source='11')
     allocate(p         (2)%name,source='12')
     end select
     select type (p=>value(2)%w)
     type is(zext)
     allocate(p         (1)%name,source='21')
     allocate(p         (2)%name,source='22')
     end select
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       select type (p=>var(1)%w)
       type is(zext)
       p       (1)%name(:)='aa'
       p       (2)%name(:)='ab'
       k1(1)=loc(p       (1)%name)
       k1(3)=loc(p       (2)%name)
       end select
       select type (p=>var(2)%w)
       type is(zext)
       p       (1)%name(:)='ba'
       p       (2)%name(:)='bb'
       k1(2)=loc(p       (1)%name)
       k1(4)=loc(p       (2)%name)
       k=1
       end select
     end select
     if (k/=1) print *,1002
     select type (p=>value(1)%w)
     type is(zext)
     if (p         (1)%name(:)/='11') print *,1001
     if (p         (2)%name(:)/='12') print *,1002
       k2(1)=              loc(p         (1)%name)
       k2(3)=              loc(p         (2)%name)
     end select
     select type (p=>value(2)%w)
     type is(zext)
     if (p         (1)%name(:)/='21') print *,1021
     if (p         (2)%name(:)/='22') print *,1022
       k2(2)=              loc(p         (1)%name)
       k2(4)=              loc(p         (2)%name)
     end select
      
      do k=1,4
     if (k1(k)==k2(k)) print *,2002,k1(k),k2(k),k
      end do
     print *,'sngg216p : pass'
     end

