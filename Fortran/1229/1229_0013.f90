     module mod
       type :: base
       end type base
       type, extends(base) :: ext
         integer:: kkk=1
         integer,pointer:: p=>null() 
         character(:),allocatable::name  
       end type ext

     contains
     subroutine ss(var)                     
     class(base),intent(out) :: var      

     select type(var)
     type is(ext)
       if (var%kkk/=1 ) print *,1002
       if (associated(var%p)) print *,1003
       if (allocated(var%name)) print *,1004
       allocate(var%name,source='2')      
     end select

     end subroutine 
     end module
    
     program main
     use mod
     type (ext) :: var      
        allocate(var%p   ,source=-1 )      
        allocate(var%name,source='1')      
        var%kkk=-1 
        call ss(var)



     print *,'sngg462t : pass'
     end program

