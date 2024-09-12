program test
      type ty
        integer :: x
      end type ty
      type,extends(ty) :: ty1
        integer :: y
      end type ty1
 
      type (ty), target :: tgt1
      type (ty), target :: t1(2)
      type (ty1), target :: tgt2(3)
      class (ty), pointer :: p1, p2(:)
      class (*), pointer :: res(:)
      tgt1%x = 1
      t1%x = 4
      t1(2)%x = 5
      tgt2%x = 6
      tgt2(3)%x = 7
      p1 => tgt1
      p2 => tgt2
      select type (p2)
       type is(ty1)
        res=>fun2(p2,p1,t1)
        select type (res)
        type is (ty)
        if( res(1)%x==4 .and. res(2)%x==6 ) then 
          print*,'PASS'
        else
          print*,'FAIL'
        endif
        end select
      end select

contains
class(*) function fun2(dum1,dum2,dum3)
 type(ty1)::dum1(:)
 class(ty),pointer::dum2
 pointer::fun2(:)
 type(ty),target::dum3(2)

 select type(dum2)
  type is (ty)
   dum1(2)%x=dum3(1)%x
   dum3(2)%x=dum1(1)%x
    fun2 => dum3
 end select
end function
end program test

