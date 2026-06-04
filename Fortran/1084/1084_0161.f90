MODULE selmod

type ty
  integer :: x=1
end type ty

type,extends(ty) :: ty1
  integer :: y=1
end type ty1

END MODULE

program test
 use selmod 
 interface
  subroutine sub(p1)
      use selmod 
      class (ty),allocatable :: p1
  end subroutine
end interface 

      class (ty),allocatable :: tgt1
      allocate(ty1::tgt1)
      tgt1%x = 5
      call sub(tgt1)
      print*,'pass'

end program test

subroutine sub(p1)
 use selmod 
 interface
  subroutine sub2(p1,x)
      use selmod 
       class (ty),allocatable :: p1
       class (*) :: x
  end subroutine
end interface 
      class (ty),allocatable :: p1
      class (ty),allocatable :: p3
      type(ty1) :: p2
      allocate(ty1::p3)
      select type (x=>p1)
        type is (ty1)
                if(x%x.ne.5)print*,"202" 
         x = p2
           x%x= 15
           call sub2(p1,x)
           select type (x=>p1)
               type is (ty1)
                if(x%x.ne.15)print*,"202" 
                call sub2(p1,x)
           end select
         type is(ty)
         p1%x=p2%x
         print*,101
      end select
end subroutine
subroutine sub2(p1,x)
 use selmod 
      class (ty),allocatable :: p1
      class (*) :: x
      type(ty) :: p2
      select type (x=>p1)
        type is (ty1)
           select type (x=>p1)
               type is (ty1)
                if(x%x.ne.15)print*,"203" 
           end select
         type is(ty)
         p1%x=p2%x
         print*,101
      end select
      select type (x1=>x)
        type is (ty1)
           select type (x1=>x)
               type is (ty1)
                if(x1%x.ne.15)print*,"203" 
           end select
         type is(ty)
         p1%x=p2%x
         print*,101
      end select
end subroutine
