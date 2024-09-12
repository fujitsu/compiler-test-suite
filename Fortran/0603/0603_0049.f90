 integer,target::t1=20
  type ty
   integer :: ii = 3
   integer,pointer::ptr=>t1
  end type

 type,extends(ty) :: tty
   integer :: jj = 5
   integer,pointer::ptr5=>t1
   integer,allocatable::ptr2
 end type

 type,extends(tty) :: ttty
   integer :: kk = 6
   integer,pointer::ptr3=>t1
 end type

  type(tty),target:: trg
  type(ttty),target:: trg2
  type ty4
   class(ty),pointer::ptr=>NULL()
   class(tty),pointer::ptr2=>NULL()
   class(ty),pointer::ptr3=>NULL()
   class(ty),pointer::ptr4=>NULL()
  end type
  type(ty4)::obj  = ty4(trg, trg2, trg, trg2)
  type(ty4)::obj2 = ty4(trg2, trg, trg2, trg2)
call sub()
contains
subroutine sub()
  select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       if(A%ii .ne. 3) print*,"123"
        if(A%ptr.ne.20)print*,"134"
   class default
      print*,"122"
    end select
  select type(A=>obj%ptr2)
    type is(ttty)
       if(A%jj .ne. 5) print*,"121"
       if(A%kk .ne. 6) print*,"121"
       if(A%ii .ne. 3) print*,"123"
        if(A%ptr.ne.20)print*,"134"
   class default
      print*,"122"
    end select
   select type(A=>obj%ptr3)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       if(A%ii .ne. 3) print*,"123"
        if(A%ptr.ne.20)print*,"134"
   class default
      print*,"122"
    end select
  select type(A=>obj2%ptr)
    type is(ttty)
       if(A%jj .ne. 5) print*,"321",A%jj
       if(A%ii .ne. 3) print*,"323"
       if(A%ptr.ne.20)print*,"334"
   class default
      print*,"322"
    end select
  select type(A=>obj2%ptr4)
   type is(ttty)
       if(A%jj .ne. 5) print*,"421"
       if(A%ii .ne. 3) print*,"323"
        if(A%ptr.ne.20)print*,"334"
   class default
      print*,"222"
    end select 
   select type(A=>obj2%ptr2)
   type is(tty)
       if(A%jj .ne. 5) print*,"421"
       if(A%ii .ne. 3) print*,"323"
        if(A%ptr.ne.20)print*,"334"
   class default
      print*,"222"
    end select 
   select type(A=>obj2%ptr3)
   type is(ttty)
       if(A%jj .ne. 5) print*,"421"
       if(A%ii .ne. 3) print*,"323"
        if(A%ptr.ne.20)print*,"334"
   class default
      print*,"222"
    end select 
   select type(A=>obj%ptr4)
    type is(ttty)
       if(A%jj .ne. 5) print*,"421",A%jj
       if(A%kk .ne. 6) print*,"422",A%kk
       if(A%ii .ne. 3) print*,"423"
   class default
      print*,"422"
    end select
    print*,"Pass"
end
end

