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

      class(ty),allocatable :: tgt1
      allocate(tgt1)
      tgt1%x = 5
      call sub(tgt1)

end program test

subroutine sub(p1)
 use selmod 
 interface
  subroutine sub2(p1)
      use selmod 
      class (ty),allocatable :: p1
  end subroutine
  subroutine sub3(p1)
      use selmod 
      class (ty) :: p1
  end subroutine
end interface 
      class (ty),allocatable :: p1
      type(ty) :: p2
      p2%x=1
      select type (x=>p1)
        type is (ty)
         x = p2
           select type (x=>p1)
               type is (ty)
                if(x%x.ne.1)print*,"202" 
                call sub2(p1)
                call sub3(x)
           end select
         type is(ty1)
         p1%x=p2%x
         print*,101
      end select
end subroutine
subroutine sub2(p1)
 use selmod 
      class (ty),allocatable :: p1
      type(ty) :: p2
      select type (x=>p1)
        type is (ty)
           select type (p1)
               type is (ty)
                if(p1%x.ne.1)print*,"303" 
                print*,'pass'
           end select
         type is(ty1)
         p1%x=p2%x
         print*,101
      end select
end subroutine
subroutine sub3(p1)
 use selmod 
      class (ty) :: p1
      type(ty) :: p2
      select type (x=>p1)
        type is (ty)
           select type (p1)
               type is (ty)
                if(p1%x.ne.1)print*,"403" 
           end select
         type is(ty1)
         p1%x=p2%x
         print*,102
      end select
end subroutine
