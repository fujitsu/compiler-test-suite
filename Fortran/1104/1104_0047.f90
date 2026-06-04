     module mod
       type :: w
          character(:),allocatable::name
       end type 
       type, extends(w) :: ww
          character(:),allocatable::nameww
       end type 

       type :: base
          class(w),allocatable::b
       end type base
       type, extends(base) :: ext
          class(w),allocatable::e
       end type ext
         class(base), allocatable :: var
         class(base), allocatable :: value

     contains

       subroutine s1()
         var=value
       end subroutine s1
     end module mod

     subroutine x
     use mod
     integer(8)::k1,k2,n1,n2
     allocate(ext::value)
     allocate(ww::value%b)
     select type(t=>value%b)
       type is(ww)
         allocate(t%name,source='aa')
         allocate(t%nameww,source='cc')
     end select
     select type(value)
      type is(ext)
        allocate(ww::value%e)
        select type(t=>value%e)
          type is(ww)
            allocate(t%name,source='bb')
            allocate(t%nameww,source='dd')
        end select
     end select
     call s1
     select type(t=>var%b)
       type is(ww)
         t%name(:)='11'
         t%nameww(:)='11'
         k1=loc(t%name)
     end select
     k=0
     select type(var)
     type is(ext)
       select type(t=>var%e)
         type is(ww)
           t%name(:)='22'
           t%nameww(:)='22'
           n1=loc(t%name)
        end select
       k=1
     end select
     if (k/=1) print *,1002
     select type(t=>value%b)
       type is(ww)
         if (t%name(:)/='aa') print *,1011
         if (t%nameww(:)/='cc') print *,1031
         k2=              loc(t%name)
     end select
     select type(value)
      type is(ext)
        select type(t=>value%e)
          type is(ww)
            if (t%name(:)/='bb') print *,1012
            if (t%nameww(:)/='dd') print *,1042
            n2=              loc(t%name)
        end select
     end select
     if (k1==k2) print *,2002
     if (n1==n2) print *,2012
     end
     call x
     print *,'sngg624p : pass'
     end 

