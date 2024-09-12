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
   class(ty),pointer::ptr=>trg
   class(tty),pointer::ptr2=>trg2
   class(ty),pointer::ptr3=>trg
   class(ty),pointer::ptr4=>trg2
  end type
  type(ty4)::obj
  type(ty4)::obj2 = ty4(trg2, trg, trg2, trg2)
call sub()
contains
subroutine sub()
  select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       if(A%ii .ne. 3) print*,"123"
        if(A%ptr.ne.20)print*,"134"
        A%jj =15
   class default
      print*,"124"
    end select
  select type(A=>obj%ptr2)
    type is(ttty)
       if(A%jj .ne. 5) print*,"125"
       if(A%kk .ne. 6) print*,"126"
       if(A%ii .ne. 3) print*,"127"
       if(A%ptr.ne.20)print*,"138"
       A%kk =30
       A%ptr =60
   class default
      print*,"129"
    end select
   select type(A=>obj%ptr3)
    type is(tty)
       if(A%jj .ne.15) print*,"130"
       if(A%ii .ne. 3) print*,"131"
        if(A%ptr.ne.60)print*,"132"
        A%jj =5
   class default
      print*,"133"
    end select


  select type(A=>obj2%ptr)
    type is(ttty)
       if(A%jj .ne.5) print*,"334",A%jj
       if(A%ii .ne. 3) print*,"335"
       if(A%ptr.ne.60)print*,"336"
   class default
      print*,"337"
    end select
  select type(A=>obj2%ptr4)
   type is(ttty)
       if(A%jj .ne. 5) print*,"338"
       if(A%ii .ne. 3) print*,"339"
        if(A%ptr.ne.60)print*,"340"
   class default
      print*,"241"
    end select 
   select type(A=>obj2%ptr2)
   type is(tty)
       if(A%jj .ne. 5) print*,"421"
       if(A%ii .ne. 3) print*,"393"
        if(A%ptr.ne.60)print*,"394"
   class default
      print*,"922"
    end select 
   select type(A=>obj2%ptr3)
   type is(ttty)
       if(A%jj .ne. 5) print*,"521"
       if(A%ii .ne. 3) print*,"523"
        if(A%ptr.ne.60)print*,"534"
   class default
      print*,"522"
    end select 
   select type(A=>obj%ptr4)
    type is(ttty)
       if(A%jj .ne. 5) print*,"621",A%jj
       if(A%kk .ne.30) print*,"622",A%kk
       if(A%ii .ne. 3) print*,"623"
        if(A%ptr.ne.60)print*,"534"
   class default
      print*,"622"
    end select
    print*,"Pass"
end
end

