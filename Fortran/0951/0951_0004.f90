  type ty
     integer :: ii = 3
  end type

  type,extends(ty) :: tty
       integer :: jj = 5
  end type
  type(tty),target:: trg
  type(ty),target:: trg2
   type ty2
      class(ty),pointer::ptr
   end type
   type ty3
      type(ty2)::obj(2)
   end type
   type(ty3)::obj4
   data obj4%obj(2)  /ty2(trg2)/
   data obj4%obj(1)  /ty2(trg)/

   if(fun().ne.5)print*,"102"
   contains
  function fun()
   integer::fun
     select type(A=>obj4%obj(2)%ptr)
     type is(ty)
       if(A%ii.ne.3)print*,"422"
       fun = A%ii
     class default
       print*,"444"
     end select
     select type(A=>obj4%obj(1)%ptr)
     type is(tty)
       if(A%jj.ne.5)print*,"426"
       fun = A%jj
     class default
       print*,"459"
     end select
     print*,"PASS"
  end
  end

