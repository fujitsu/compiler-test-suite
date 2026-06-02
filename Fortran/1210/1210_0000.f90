     module mod
       type :: base
          character(:),allocatable::n
       end type base
       integer(8)::a

     contains

       subroutine s1( value)
         type (base),value  :: value
              value%n='zz'
  write(1, '(2h2 ,z16.16)')loc(value%n)
       end subroutine s1
     end module mod

subroutine w
     use mod
     type (base), allocatable :: value
     allocate(value)
         allocate(value%n,source='a1')
  write(1, '(2h1 ,z16.16)')loc(value%n)
     call s1( value     )

         if (value%n(:)/='a1') print *,1100
end
call w
     print *,'sngg586r : pass'
     end 

