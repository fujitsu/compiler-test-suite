       module m1
        type t1
          integer:: x11
          contains
          procedure:: t_prc=>prc
          generic:: assignment(=) => t_prc
        end type
        contains
        elemental subroutine   prc(x,y)
         class(t1),intent(inout)::x
         class(t1),intent(in)::y
         x%x11 = y%x11+100
       end subroutine
      end
      module m2
      use m1
       type t2
         integer:: x21
         type(t1),allocatable:: x22(:)
       end type
      end

     subroutine s1
     use m2
     type(t2):: v21(2),v22(2)
      v21(1)%x21=11
      v21(2)%x21=12
      allocate(v22(1)%x22(3))
      allocate(v22(2)%x22(3))
      v22(1)%x21=13
      v22(1)%x22%x11=14
      v22(2)%x21=15
      v22(2)%x22%x11=16
      if(allocated(v22(1)%x22))then
         if (v22(1)%x22(1)%x11/=14)print *,201,v22(1)%x22(1)%x11
      endif
      if(allocated(v22(2)%x22))then
         if (v22(2)%x22(1)%x11/=16)print *,202,v22(2)%x22(1)%x11
      endif
      v22=v21
      if (v22(1)%x21/=11)print *,203
      if(allocated(v22(1)%x22))then
         if (v22(1)%x22(1)%x11/=114)print *,203,v22(1)%x22(1)%x11
      endif
      if (v22(2)%x21/=12)print *,204
      if(allocated(v22(2)%x22))then
         if (v22(2)%x22(1)%x11/=116)print *,204,v22(2)%x22(1)%x11
      endif
      end
      call s1
      print *,'Pass'
      end
