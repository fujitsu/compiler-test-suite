     module mod
       type :: base
       end type base
       type, extends(base) :: ext
         integer:: kkk=1
         character(:),allocatable::name  
       end type ext

     contains
     subroutine ss(var)                     
     class(base),intent(out) :: var      

     select type(var)
     type is(ext)
       if (allocated(var%name)) print *,1001
       if (var%kkk/=1 ) print *,1002
       allocate(var%name,source='2')      
     end select

     end subroutine 
     end module
    
     program main
     use mod
     type (ext) :: var      
        allocate(var%name,source='1')      
        var%kkk=101
        call ss(var)



     print *,'sngg459t : pass'
     end program

