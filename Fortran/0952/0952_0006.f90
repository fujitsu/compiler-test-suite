  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type

  type(tty),target,save :: trg
  type ty4
     class(ty),pointer::ptr=>trg
  end type
  type(ty4),allocatable::obj2
  allocate(obj2)
  select type(A=>obj2%ptr)
    type is(tty)
      if(A%jj.ne.5)print*,"101"
   class default
      print*,"122"
    end select 
  deallocate(obj2)
  allocate(obj2)
  select type(A=>obj2%ptr)
    type is(tty)
      if(A%jj.ne.5)print*,"101"
   class default
      print*,"122"
    end select 
     print*,"Pass"
end

