     module mod
       type b
       end type
       type,extends(b)::e
          class(*)    ,allocatable::name
       end type

       type :: base
       end type 

       type, extends(base) :: ext
          class(*)    ,allocatable::name
          class(b)    ,allocatable::bb
       end type ext

     contains

       subroutine s1(var, value)
         class(ext ), allocatable, intent(inout) :: var
         class(ext ), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

     subroutine ss
     use mod
     class(ext ), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4
     allocate(value)
     allocate(value%name,source='ok')
     allocate(e           ::value%bb              )
     select type(z=>value%bb)
       type is(e)
         allocate(z%name,source='ok')
     end select
     call s1(var, value) 
     k=0
     n=0
     select type(var)
     type is(ext)
       select type(z=>var%name)
         type is(character(*))
           z       (:)='11'
           k1=loc(z       )
           k=1
       end select
       select type(z=>var%bb  )
         type is(e           )
           select type(w=>z     %name  )
             type is(character(*))
               w     ='11'
               k3=loc(w)
               n=1
           end select
       end select
     end select
     if (k/=1) print *,1002
     if (n/=1) print *,1003
     select type(z=>value%name)
       type is(character(*))
         if (z         (:)/='ok') print *,1001
         k2=              loc(z         )
     end select
     if (k1==k2) print *,2002
     select type(z=>value%bb  )
       type is(e           )
         select type(w=>z       %name  )
            type is(character(*))
              if (w            (:)/='ok') print *,1401
               k4=loc(w          )
         end select
       end select
     if (k3==k4) print *,2002
     deallocate(var)
     deallocate(value%bb)
     deallocate(value%name)

     k=0
     select type(var)
       type is(ext )
        k=1
     end select
     if (k/=1) print *,9001
     k=0
     select type(z=>value%bb )
       type is(b)
        k=1
     end select
     if (k/=1) print *,9021
     k=0
     if (allocated( value%name)) then
     select type(z=>value%name)
            type is(character(*))
        k=1
     end select
     if (k/=0) print *,9031
     end if
     end
     call ss
     print *,'sngg238p : pass'
     end

