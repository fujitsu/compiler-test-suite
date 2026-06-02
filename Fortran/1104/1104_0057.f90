     module mod
       type :: base
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer(8)::a

     contains

       subroutine s1( value)
         class(base),value  :: value
           select type(value)
             type is(ext)
              value%name='zz'
  write(10, '(2h2 ,z16.16)')loc(value%name)
           end select
       end subroutine s1
     end module mod

subroutine w
     use mod
     class(base), allocatable :: value
     allocate(ext::value)
     select type(value)
       type is(ext)
         allocate(value%name,source='a1')
  write(10, '(2h1 ,z16.16)')loc(value%name)
     call s1( value     )
     end select


     select type(value)
       type is(ext)
         if (value%name(:)/='a1') print *,1101
     end select

end
call w
     print *,'sngg636p : pass'
     end
