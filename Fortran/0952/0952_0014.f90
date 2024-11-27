  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type

  type(tty),target,save :: trg
  type ty2
     class(*),pointer::ptr=>trg
  end type
  type(ty2),allocatable::obj
  type(ty2),pointer::obj2
  integer :: alloc_stat
  character(256) :: my_errmsg
  trg%ii = 11
  trg%jj = 12
  allocate(obj,stat=alloc_stat, errmsg=my_errmsg)
  allocate(obj2,stat=alloc_stat,errmsg=my_errmsg)
  if(alloc_stat.ne.0) then
  print*,"FAIL"
  print*,my_errmsg
  else
  select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 12) print*,"121"
       if(A%ii .ne. 11) print*,"123"
   class default
      print*,"122"
    end select
  trg%ii = 15
  trg%jj = 13
   select type(A=>obj2%ptr)
    type is(tty)
       if(A%ii .ne. 15) print*,"131"
       if(A%jj .ne. 13) print*,"133", A%jj
   class default
      print*,"122"
    end select
    print*,"Pass"
  endif
end

