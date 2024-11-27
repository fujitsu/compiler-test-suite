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
  integer,target::t1 =30
  type ty2
     class(ty),pointer::ptr=>trg
     integer,pointer::pty=>t1
  end type
  type(ty2),allocatable::obj3
 allocate(obj3)
 if(obj3%pty.ne.30)print*,"109"
 select type(A=>obj3%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       A%jj =30
   class default
      print*,"122"
    end select 
    print*,"Pass"
 deallocate(obj3)
end

