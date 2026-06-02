 type t
   integer::ii(2),jj(2),kk(2)
 end type
integer::a(2,3)
        call sub (a)
        contains
         subroutine sub(s)
          integer::s(..)
          type(t)::obj
        obj=t(shape(s),shape(s),shape(s))
  
        if(obj%ii(1)/=2)print*,101
        if(obj%ii(2)/=3)print*,102
        if(obj%jj(1)/=2)print*,103
        if(obj%kk(2)/=3)print*,104
        print*,"PASS"
        end subroutine


        end
