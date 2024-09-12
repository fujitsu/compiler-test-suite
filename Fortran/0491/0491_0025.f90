subroutine ss
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type

  type(tty),target,save :: trg
  type ty2
     class(ty),pointer::ptr=>trg
  end type
  type(ty2),allocatable::obj
  type(ty2),pointer::obj2
  trg%ii = 11
  trg%jj = 12
  allocate(obj)
  select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 12) print*,"121"
       if(A%ii .ne. 11) print*,"123"
   class default
      print*,"122"
    end select
  allocate(obj2)
  trg%ii = 15
  trg%jj = 13
   select type(A=>obj2%ptr)
    type is(tty)
       if(A%ii .ne. 15) print*,"131"
       if(A%jj .ne. 13) print*,"133", A%jj
   class default
      print*,"122"
    end select
end
call ss
    print*,"pass"
end
