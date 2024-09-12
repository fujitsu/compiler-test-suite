        type t
          integer::x
        end type t
         type tt
         class(*), allocatable::iii
         end type tt
         type(tt) :: ttt
      allocate(ttt%iii,source='1')
                select type(zzz=>ttt%iii)
                type is(character(*))
                 zzz = '1'
               end select
       print *,'pass'
       end
       
       
