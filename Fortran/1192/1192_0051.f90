     module mod
       type z
          character(:),allocatable::name
       end type

       type :: base
       end type base

       type, extends(base) :: ext
         integer(8):: x
         type(z)::w(2)
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:)
         class(base), intent(in) :: value(:) 
         allocate(var, source=value)
       end subroutine s1
       subroutine wal(w)
         type(z)::w(:)
          allocate(w(1)%name,source='11')
          allocate(w(2)%name,source='21')
       end
    end

     use mod
     class(base), allocatable :: var(:)
     type(ext), allocatable :: value(:)
     integer(8)::k1(4),k2(4)
     allocate(value(2))
     call wal(value(1)%w)
     call wal(value(2)%w)
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var(1)%w(1)%name(:)='aa'
       var(2)%w(1)%name(:)='ba'
       var(1)%w(2)%name(:)='ab'
       var(2)%w(2)%name(:)='bb'
       k1(1)=loc(var(1)%w(1)%name)
       k1(2)=loc(var(2)%w(1)%name)
       k1(3)=loc(var(1)%w(2)%name)
       k1(4)=loc(var(2)%w(2)%name)
       k=1
     end select
     if (k/=1) print *,1302
     if (value(1)%w(1)%name(:)/='11') print *,1001
     if (value(2)%w(1)%name(:)/='11') print *,1021!,value(2)%w(1)%name(:)
     if (value(1)%w(2)%name(:)/='21') print *,1002!,value(1)%w(2)%name(:)
     if (value(2)%w(2)%name(:)/='21') print *,1022
       k2(1)=              loc(value(1)%w(1)%name)
       k2(2)=              loc(value(2)%w(1)%name)
       k2(3)=              loc(value(1)%w(2)%name)
       k2(4)=              loc(value(2)%w(2)%name)
      do k=1,4
     if (k1(k)==k2(k)) print *,2002,k1(k),k2(k)
      end do
     print *,'sngg221p : pass'
     end

