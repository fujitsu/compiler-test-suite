  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type,extends(tty) :: ttty
    integer :: kk = 10
  end type

  type(tty),target,save :: trg
  type(ttty),target,save :: trg2
  type ty2
     class(ty),pointer::ptr=>trg
  end type
  type ty3
     class(ty),pointer::ptr2=>trg2
     type(ty2)::obj2
     class(ty),pointer::ptr3=>trg
  end type
  type(ty3),allocatable::obj3
 allocate(obj3)
  select type(A=>obj3%obj2%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       A%jj =30
   class default
      print*,"122"
    end select 
  select type(A=>obj3%ptr2)
    type is(ttty)
       if(A%kk .ne. 10) print*,"222"
   class default
      print*,"222"
    end select
    select type(A=>obj3%ptr3)
    type is(tty)
       if(A%jj .ne. 30) print*,"322"
   class default
      print*,"322"
    end select
    print*,"Pass"
end

