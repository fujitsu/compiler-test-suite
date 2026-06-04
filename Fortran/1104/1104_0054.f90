     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:)
         class(base), intent(in) :: value(:)
           select type(value)
             type is(ext)
               var=value
  write(7, '(2h2 ,z16.16)'),loc(value(1)%name)
           end select
           select type(var)
             type is(ext)
  write(7, '(2h3 ,z16.16)'),loc(var(1)%name)
           end select
       end subroutine s1
     end module mod

subroutine w
     use mod
     class(base), allocatable :: var(:)
     class(base), allocatable :: value(:)
     integer(8)::k1,k2
     allocate(ext::value(5))
     select type(value)
       type is(ext)
         allocate(value(1)%name,source='a1')
  write(7, '(2h1 ,z16.16)'),loc(value(1)%name)
         allocate(value(2)%name,source='a2')
         allocate(value(3)%name,source='a3')
         allocate(value(4)%name,source='a4')
         allocate(value(5)%name,source='a5')
     call s1(var, (value(::2)) )
     end select
     k=0
     select type(var)
     type is(ext)
       if (size(var)/=3) print *,20001
       if (var(1)%name/='a1') print *,2001
       if (var(2)%name/='a3') print *,2003
       if (var(3)%name/='a5') print *,2005
       var(1)%name(:)='b1'
       var(2)%name(:)='b2'
       var(3)%name(:)='b3'
       k1=loc(var(1)%name)
       k=1
     end select
     if (k/=1) print *,1002
     select type(value)
       type is(ext)
         if (value(1)%name(:)/='a1') print *,1101
         if (value(2)%name(:)/='a2') print *,1201
         if (value(3)%name(:)/='a3') print *,1301
         if (value(4)%name(:)/='a4') print *,1401
         if (value(5)%name(:)/='a5') print *,1401
         k2=              loc(value(1)%name)
     end select
     if (k1==k2) print *,2002
end
call w
     print *,'sngg631p : pass'
     end
