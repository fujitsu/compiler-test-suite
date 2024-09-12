module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type

  type(tty),target,save :: trg
  class(ty),pointer::ptr=>trg 
  class(*),pointer::ptr2=>trg 
  contains
  subroutine msub() 
   select type(A=>ptr)
    type is(tty)
       if(A%jj .ne. 30) print*,"131"
   class default
      print*,"122"
   end select  
   select type(A=>ptr2)
    type is(tty)
       if(A%jj .ne. 30) print*,"141"
   class default
      print*,"122"
   end select 

  end 

end module
use m
   select type(A=>ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
       A%jj =20
   class default
      print*,"122"
    end select 
    select type(A=>ptr2)
    type is(tty)
       if(A%jj .ne. 20) print*,"141"
   class default
      print*,"122"
   end select 

  call sub()
  call msub()
  print*,"Pass"
  contains
  subroutine sub() 
   select type(A=>ptr)
    type is(tty)
       if(A%jj .ne. 20) print*,"151"
       A%jj =30
   class default
      print*,"122"
   end select  
   select type(A=>ptr2)
    type is(tty)
       if(A%jj .ne.30) print*,"141"
   class default
      print*,"122"
   end select 

  end 
end

