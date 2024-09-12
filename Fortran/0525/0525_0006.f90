subroutine s1
 type t
 end type t
  type tt
  class(t), allocatable::iii
  end type tt
  type(tt) :: ttt
         select type(zzz=>ttt%iii)
         type is(t)
          zzz = ttt%iii
        end select
        end
print *,'pass'
end


