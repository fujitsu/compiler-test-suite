subroutine s1
 type t
 end type t
  type tt
  type(t), allocatable::iii
  end type tt
  class(tt),allocatable :: ttt
allocate(ttt)
allocate(ttt%iii)
         select type(zzz=>ttt)
         type is(tt)
          zzz%iii = ttt%iii
        end select
        end
print *,'pass'
end


