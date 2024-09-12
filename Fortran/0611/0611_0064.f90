       module m1
        type base
          integer:: x12
          contains
          procedure:: t_prc1=>prc1
          generic:: assignment(=) => t_prc1
        end type
        type t1
          integer:: x11
          type(base) :: cmp_base
          contains
          procedure:: t_prc=>prc
          generic:: assignment(=) => t_prc
        end type
        contains
        elemental subroutine   prc(x,y)
         class(t1),intent(inout)::x
         class(t1),intent(in)::y
         x%x11 = y%x11+100
         x%cmp_base = y%cmp_base
       end subroutine
       pure subroutine   prc1(x,y)
         class(base),intent(inout)::x
         class(base),intent(in)::y
         x%x12 = y%x12+100
       end subroutine
      end
      module m2
      use m1
       type tt
         type(t1),allocatable:: x22_alc(:)
       end type
       type t2
         type(tt) :: tt_cmp(4)
         integer:: x21
         type(t1):: x22(2)
       end type
      end

     subroutine s1
     use m2
     type(t2):: v21,v22
      v21%x21=11
      allocate(v21%tt_cmp(2)%x22_alc(2))
      v21%x21=14
      v21%tt_cmp(2)%x22_alc(1)%x11=12
      v21%tt_cmp(2)%x22_alc(2)%x11=13
      v21%tt_cmp(2)%x22_alc(1)%cmp_base%x12=15
      v21%tt_cmp(2)%x22_alc(2)%cmp_base%x12=16

      v21%x22(1)%x11=120
      v21%x22(2)%x11=130
      v21%x22(1)%cmp_base%x12=150
      v21%x22(2)%cmp_base%x12=160
      v22=v21
      if (v22%x21/=14)print *,201,v22%x21
      if (v22%tt_cmp(2)%x22_alc(1)%x11/=112)print *,202,v22%tt_cmp(2)%x22_alc(1)%x11
      if (v22%tt_cmp(2)%x22_alc(1)%cmp_base%x12/=115)print *,203,v22%tt_cmp(2)%x22_alc(1)%cmp_base%x12
      if (v22%tt_cmp(2)%x22_alc(2)%x11/=113)print *,204,v22%tt_cmp(2)%x22_alc(2)%x11
      if (v22%tt_cmp(2)%x22_alc(2)%cmp_base%x12/=116)print *,205,v22%tt_cmp(2)%x22_alc(2)%cmp_base%x12

      if (v22%x22(1)%x11/=220)print *,207,v22%x22(1)%x11
      if (v22%x22(1)%cmp_base%x12/=250)print *,208,v22%x22(1)%cmp_base%x12
      if (v22%x22(2)%x11/=230)print *,209,v22%x22(2)%x11
      if (v22%x22(2)%cmp_base%x12/=260)print *,210,v22%x22(2)%cmp_base%x12
      end
      call s1
      print *,'Pass'
      end
