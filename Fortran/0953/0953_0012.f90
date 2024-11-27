  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type

  type(tty),target,save :: trg
  integer,target::t1 =30
  type ty2
     class(*),pointer::ptr=>trg
     class(*),pointer::ptr2=>t1
  end type

  call sub( )
  contains
  subroutine sub()
  type(ty2),allocatable::obj
  type(ty2),pointer::obj2
  trg%ii = 11
  trg%jj = 12
  allocate(obj)
  allocate(obj2)
  select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 12) print*,"121"
       if(A%ii .ne. 11) print*,"123"
   class default
      print*,"122"
    end select 
  select type(A=>obj%ptr2)
    type is(integer)
       if(A .ne. t1) print*,"923"
   class default
      print*,"922"
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
   select type(A=>obj2%ptr2)
    type is(integer)
       if(A .ne. t1) print*,"913"
   class default
      print*,"942"
    end select
    print*,"Pass"
   end subroutine
end

