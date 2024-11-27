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
 end type
  type ty3
    type(ty2)::obj(2) = [ty2(trg),ty2(trg2)]
  end type
type(ty3)::obj9
 integer::k
   k=1
   select type(A=>obj9%obj(k)%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
   class default
      print*,"122"
    end select 
  k =2
  select type(A=>obj9%obj(k)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"122"
   class default
      print*,"124"
    end select 
    print*,"Pass"
end

