     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       type xx
         integer(8)::d1
         type (base), allocatable :: value
       end type
       type(xx)::xv(2,3)
      
        

end

     subroutine ss
     use mod
       do n1=1,3
       do n2=1,2
     allocate(xv(n2,n1)%value)
       end do
       end do
     end subroutine
     call ss
     print *,'sngg569t : pass'
     end program

