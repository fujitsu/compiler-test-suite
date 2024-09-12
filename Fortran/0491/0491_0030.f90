subroutine ss(k)
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
  type(ty2)::obj(k)
  trg%ii = 11
  trg%jj = 12
  select type(A=>obj(2)%ptr)
    type is(tty)
       if(A%jj .ne. 12) print*,"121"
       if(A%ii .ne. 11) print*,"123"
   class default
      print*,"122"
    end select
end
call ss(2)
    print*,"pass"
end
