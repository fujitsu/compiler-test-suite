     module mod
       type :: base
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer(8)::a

     contains

       subroutine s1( value,n)
         class(base),value  :: value(:)
         if (size(value)/=n) print *,8001
           select type(value)
             type is(ext)
              value(1)%name='zz'
  write(9, '(2h2 ,z16.16)')loc(value(1)%name)
           end select
       end subroutine s1
     end module mod

subroutine w
     use mod
     class(base), allocatable :: value(:)
     allocate(ext::value(5))
     select type(value)
       type is(ext)
         allocate(value(1)%name,source='a1')
  write(9, '(2h1 ,z16.16)')loc(value(1)%name)
         allocate(value(2)%name,source='a2')
         allocate(value(3)%name,source='a3')
         allocate(value(4)%name,source='a4')
         allocate(value(5)%name,source='a5')
     call s1( value     ,5 )
     end select


     select type(value)
       type is(ext)
         if (value(1)%name(:)/='a1') print *,1101
         if (value(2)%name(:)/='a2') print *,1201
         if (value(3)%name(:)/='a3') print *,1301
         if (value(4)%name(:)/='a4') print *,1401
         if (value(5)%name(:)/='a5') print *,1401
     call s1( value(::2),3 )
     end select


     select type(value)
       type is(ext)
         if (value(1)%name(:)/='a1') print *,1101
         if (value(2)%name(:)/='a2') print *,1201
         if (value(3)%name(:)/='a3') print *,1301
         if (value(4)%name(:)/='a4') print *,1401
         if (value(5)%name(:)/='a5') print *,1401
     end select
end
call w
     print *,'sngg634p : pass'
     end
