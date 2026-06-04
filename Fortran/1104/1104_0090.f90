module m1
type b
  integer(8)::dd
end type
type,extends(b)::e
  integer(8)         ::eummy
  integer,allocatable::ee
end type
         type base
           integer::x
         end type
         type,extends(base)::ext
           integer(8)         ::dummy
           class(*),allocatable::xx
         end type
         type ty
            class(*   ), allocatable :: mem
          end type
contains
 subroutine s1(c)
  class(*   )::c
  class(*) ,allocatable::obj
  allocate(ty::obj)
  select type(p=>obj)
   type is(ty)
  allocate(ext::p  %mem)
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
      select type (w=>c%xx)
        type is(e)
          w%ee=-1
          k=1
    end select
  end select
  if (k/=1) print *,8001  
  k=0
  select type(p=>obj)
   type is(ty)
       select type(qq => p%mem)
         type is (ext)
           if (allocated(p%mem)) then
             select type(w=>qq%xx)
               type is(e)
                 if (w%ee/=10) print *,6001
                 k=1
             end select
           end if
       end select
  end select
  if (k/=1) print *,3001  
  end
end
   subroutine sss
        use m1
          class(*),allocatable::bv
          class(*   ),allocatable::c
        allocate(e::bv)
        select type(bv)
         type is(e)
          allocate(bv%ee,source=10)
        end select
        allocate(ext::c)
        select type(c)
         type is(ext)
          allocate(c%xx,source=bv)
        end select
        call s1(c)
   end
call sss
print *,'sngg767p : pass'
end


