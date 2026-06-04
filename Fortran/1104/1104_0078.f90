module m1
         type base
           integer::x
         end type
         type,extends(base)::ext
           integer(8)         ::dummy
           integer,allocatable::xx
         end type
         type ty
            class(base), allocatable :: mem
          end type
contains
 subroutine s1(c)
  class(base)::c
  class(ty),allocatable::obj
  allocate(ty::obj)
  allocate(ext::obj%mem)
  select type(p=>obj)
   type is(ty)
       select type(qq => p%mem)
         type is (ext)
           qq%x=-1
           if (allocated(p%mem)) then
               deallocate(p%mem)
           endif
           allocate(p%mem,source=c)
       end select
  end select
  k=0
  select type(c)
    type is(ext)
      c%xx=-1
      k=1
  end select
  if (k/=1) print *,8001  
  k=0
  select type(p=>obj)
   type is(ty)
       select type(qq => p%mem)
         type is (ext)
           if (allocated(p%mem)) then
             if (qq%xx/=10) print *,6001
             k=1
           end if
       end select
  end select
  if (k/=1) print *,3001  
  end
end
   subroutine sss
        use m1
          class(base),allocatable::c
        allocate(ext::c)
        select type(c)
         type is(ext)
          allocate(c%xx,source=10)
        end select
        call s1(c)
   end
call sss
print *,'sngg753p : pass'
end


