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
       type t2base
        character(8) :: ch = 'l'
         contains
         procedure:: t2_prc
         generic:: assignment(=) => t2_prc
       end type

       type,extends(t2base) :: t2
         integer:: x21
         type(t1),allocatable:: x22(:)
       end type

       contains
       elemental subroutine   t2_prc(x,y)
        class(t2base),intent(inout)::x
        class(t2base),intent(in)::y
        x%ch = y%ch
        select type(x)
        class is(t2)
         select type(y)
         class is (t2)
          x%x22 = y%x22
          x%x21 = y%x21
         end select
        end select
       end subroutine
      end
 
     subroutine s1
     use m2
     class(t2base),pointer :: p1(:),p2(:)

     type(t2),target:: v21(2),v22(2)
      v21%x21=11
      allocate(v21(1)%x22(3))
      allocate(v21(2)%x22(3))
      allocate(v22(1)%x22(3))
      allocate(v22(2)%x22(3))
      v21(1)%x21=13
      v21(2)%x21=15
      v21(1)%x22%x11=14
      v21(2)%x22%x11=16

     p1=>v21
     p2=>v22

     p1%ch='k'

     select type(p2)
     type is(t2)
     select type(p1)
     type is(t2)
      p2 = p1

      if (p2(1)%x21/=13)print *,201,v22(1)%x21
      if (p2(1)%x22(1)%x11/=114)print *,202,v22(1)%x22(1)%x11
      if (p2(2)%x21/=15)print *,203,p2(2)%x21
      if (p2(2)%x22(1)%x11/=116)print *,204,v22(2)%x22(1)%x11
      end select
      end select
      end
      call s1
      print *,'pass'
      end

