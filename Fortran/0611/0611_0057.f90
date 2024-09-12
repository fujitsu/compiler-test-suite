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
       type t3
         integer:: x21
         type(t2):: x23
       end type
      end
 
     subroutine s1
     use m2
     type(t3):: v21(4,4),v22(2,2)
      v21%x23%x21=11
      v21%x23%x22%x11=12
      v21(2,1)%x23%x21=13
      v21(2,1)%x23%x22%x11=14
      v21(4,3)%x23%x21=15
      v21(4,3)%x23%x22%x11=16
      v21(2,3)%x23%x21=13
      v21(2,3)%x23%x22%x11=14
      v21(4,1)%x23%x21=15
      v21(4,1)%x23%x22%x11=16
      v22%x23= v21(2:4:2,1:4:2)%x23
      if (v22(1,1)%x23%x21/=13)print *,201
      if (v22(1,1)%x23%x22%x11/=114)print *,202,v22(1,1)%x23%x22%x11
      if (v22(2,1)%x23%x21/=15)print *,203
      if (v22(2,2)%x23%x22%x11/=116)print *,204,v22(2,2)%x23%x22%x11
      end
      call s1
      print *,'Pass'
      end
