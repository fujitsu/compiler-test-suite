integer::a(4)
call sub(a)
contains
subroutine sub(xx)
    type(*) :: xx(:)
    call sub2(xx) 
  end subroutine
   subroutine sub2(xx)
     type(*) :: xx(..)
    if(rank(xx)/=1)print*,101
    print*,"PASS"
   end subroutine

end
