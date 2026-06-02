 type t2
   integer::ii(2),jj(2),kk(2)
 end type
integer::a(2,3)
   call sub (a)
   contains
    subroutine sub(s)
      integer::s(..)
        type(t2)::obj2
        obj2=t2(ubound(s),ubound(s),ubound(s))

      if(obj2%ii(1) /=2)print*,101
      if(obj2%ii(2) /=3)print*,102
      if(obj2%jj(1) /=2)print*,103
      if(obj2%jj(2) /=3)print*,104
      if(obj2%kk(1) /=2)print*,105
      if(obj2%kk(2) /=3)print*,106
 print*,"PASS"
        end subroutine


        end
