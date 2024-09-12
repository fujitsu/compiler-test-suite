       module m1
        type t1
          integer:: x11
          contains
          procedure:: t_prc=>prc
          generic:: assignment(=) => t_prc
        end type
        contains
        subroutine   prc(x,y)
         class(t1),intent(out)::x
         class(t1),intent(in)::y
         x%x11 = y%x11+100
       end subroutine
      end
      module m2
      use m1
       type t2
         integer:: x21
         type(t1):: x22
       end type
      end
 
     subroutine s1
     use m2
     type(t2):: v21,v22
      v21%x21=11
      v21%x22%x11=12
      v22=v21
      if (v22%x21/=11)print *,201
      if (v22%x22%x11/=112)print *,202,v22%x22%x11
      end
      call s1
      print *,'Pass'
      end
