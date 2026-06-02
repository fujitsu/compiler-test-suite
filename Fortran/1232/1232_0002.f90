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
      
        

     contains

       subroutine s1()
       type yy
         integer(8)::d1
         class(base), allocatable :: var
       end type
       type(yy)::yv(2,3)
       do n1=1,3
       do n2=1,2
         yv(n2,n1)%var=xv(n2,n1)%value
     k=0
     select type(p=>yv(n2,n1)%var)
     type is(ext)
       p%name(:)='11'
       k=1
     end select
     if (k/=1) print *,1002
     select type(p=>xv(n2,n1)%value)
     type is(ext)
     if (p    %name(:)/='ok') print *,1001
     end select
       end do
       end do
       end subroutine s1
     end module mod

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
     call s1( ) 
     end
     call ss
     print *,'sngg567t : pass'
     end program

