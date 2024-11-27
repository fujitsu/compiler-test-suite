  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg
  type(ty),target,save :: trg2
  type ty2
    class(ty),pointer::ptr
    class(ty),pointer::ptr2
  end type

  type(ty2)::obj(2) = [ty2(trg,trg2), ty2(trg2,trg)]
  integer::k=1
  select type(A=>obj(k)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
   select type(A=>obj(k+1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
    print*,"Pass"
end
