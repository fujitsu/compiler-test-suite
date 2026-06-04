     module mod
       type :: w
          character(:),allocatable::name
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
         allocate(var,source=value)
       end subroutine s1
     end module mod

     subroutine x
     use mod
     integer(8)::k1,k2,n1,n2
     allocate(ext::value)
     allocate(w::value%b)
     select type(t=>value%b)
       type is(w)
         allocate(t%name,source='aa')
     end select
     select type(value)
      type is(ext)
        allocate(w::value%e)
        select type(t=>value%e)
          type is(w)
            allocate(t%name,source='bb')
        end select
     end select
     call s1
     select type(t=>var%b)
       type is(w)
         t%name(:)='11'
         k1=loc(t%name)
     end select
     k=0
     select type(var)
     type is(ext)
       select type(t=>var%e)
         type is(w)
           t%name(:)='22'
           n1=loc(t%name)
        end select
       k=1
     end select
     if (k/=1) print *,1002
     select type(t=>value%b)
       type is(w)
         if (t%name(:)/='aa') print *,1011
         k2=              loc(t%name)
     end select
     select type(value)
      type is(ext)
        select type(t=>value%e)
          type is(w)
            if (t%name(:)/='bb') print *,1012
            n2=              loc(t%name)
        end select
     end select
     if (k1==k2) print *,2002
     if (n1==n2) print *,2012
     end
     call x
     print *,'sngg623p : pass'
     end 

