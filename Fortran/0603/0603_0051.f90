 integer,target::t1=20
  type ty
   integer :: ii = 3
   integer,pointer::ptr=>t1
   integer,allocatable::alc
  end type

 type,extends(ty) :: tty
   integer :: jj = 5
   integer,allocatable::ptr2
 end type

  type(tty),target:: trg
  type ty4
   class(ty),pointer::ptr=>trg
  end type
  type(ty4)::obj
  type(ty4)::obj2 = ty4(trg)
call sub()
contains
subroutine sub()
select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       if(A%ii .ne. 3) print*,"123"
        if(A%ptr.ne.20)print*,"134"
        t1 =40
        A%jj=30
   class default
      print*,"122"
    end select
  select type(A=>obj2%ptr)
    type is(tty)
       if(A%jj .ne. 30) print*,"321"
       if(A%ii .ne. 3) print*,"323"
        if(A%ptr.ne.40)print*,"334"
   class default
      print*,"122"
    end select

    print*,"Pass"
end
end

