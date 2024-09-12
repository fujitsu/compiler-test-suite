   type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type

  type(tty),target,save :: trg

   type ty3
      class(tty),pointer :: cptr
   end type
   type ty4
      type(ty3)::obj
   end type
   type ty5
       type(ty4)::obj2
   end type
   type(ty5)::obj5 = ty5(ty4(ty3(trg)))
  select type(A=>obj5%obj2%obj%cptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
   class default
      print*,"122"
    end select 
    print*,"Pass"
    end

