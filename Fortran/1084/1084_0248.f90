  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg
  type(ty),target,save :: trg2(2)
    class(ty),pointer::ptr=>trg
    class(ty),pointer::ptr2(:)=>trg2
    call sub(ptr ,ptr2)
    contains 
     subroutine sub(ptr ,ptr2)
     class(ty)::ptr
     class(ty)::ptr2(2)
     select type(A=>ptr)
     type is(tty)
       if(A%ii .ne. 3) print*,"121"
      select type(A=>ptr)
        type is(tty)
          if(A%jj .ne. 5) print*,"123"
        class default
          print*,"125"
      end select 
     class default
      print*,"122"
    end select 
    select type(A=>ptr2)
    type is(ty)
       if(A(1)%ii .ne. 3) print*,"123"
      select type(A=>ptr2)
       type is(ty)
        if(A(2)%ii .ne. 3) print*,"163"
       class default
         print*,"125"
      end select 
    class default
      print*,"124"
    end select 
    select type(A=>ptr2)
    type is(ty)
       if(any(A(1:A(1)%ii-1)%ii .ne. 3)) print*,"173"
      select type(A=>ptr2)
       type is(ty)
        if(any(A(1:2)%ii .ne. 3)) print*,"183"
       class default
         print*,"125"
      end select 
    class default
      print*,"124"
    end select 

    print*,"Pass"
    end
 end
