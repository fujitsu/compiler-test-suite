     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       type xx
         integer(8)::d1
         class(base), allocatable :: value
       end type
       type(xx)::xv(2,3)
      
        

end

     subroutine ss
     use mod
       do n1=1,3
       do n2=1,2
     allocate(ext::xv(n2,n1)%value)
     select type(p=>xv(n2,n1)%value)
     type is(ext)
     allocate(p    %name,source='ok')
     end select
       end do
       end do
     end subroutine
     call ss
     print *,'sngg568t : pass'
     end program

