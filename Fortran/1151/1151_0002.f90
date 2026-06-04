module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,private,save :: trg
  type ty5
    class(ty),pointer::ptr!=>trg
  end type
   type ty3
     type(ty5)::obj = ty5(trg)
   end type
end module

module m2
use m,only:ty3,ty,tty,ty5
  type(ty),target,private,save :: trg2
   type ty4
     type(ty3)::obj2 = ty3(ty5(trg2)) 
   end type
 contains
  subroutine msub()
   type(ty4)::obj3
   type(ty3)::obj9
  select type(A=>obj3%obj2%obj%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj9%obj%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
  end
end module
use m2
call sub()
call msub()
call extsub()
print*,"Pass"
contains 
subroutine sub()
   type(ty4)::obj3
   type(ty3)::obj9
  select type(A=>obj3%obj2%obj%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"221"
   class default
      print*,"222"
    end select 
    select type(A=>obj9%obj%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"223",A%ii
   class default
      print*,"224"
    end select 
end
end
subroutine extsub()
use m2
   type(ty4)::obj3
   type(ty3)::obj9
  select type(A=>obj3%obj2%obj%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"321"
   class default
      print*,"322"
    end select 
    select type(A=>obj9%obj%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"323"
   class default
      print*,"324"
    end select 
end


