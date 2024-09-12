subroutine s1
 type t
 end type t
  type tt
  class(*), allocatable::iii
  end type tt
  type(tt) :: ttt
  type(t) :: obj_t
  obj_t = t()
         select type(zzz=>ttt%iii)
         type is(t)
          zzz = obj_t
        end select
        end
print *,'pass'
end


