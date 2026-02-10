  interface
   subroutine sub2(f)
    implicit none
    external::f
    end subroutine
  end interface
external::x
call sub2(x)
print *,'sngg176h : pass'
end

   subroutine sub2(f)
    !!!!implicit none
    external::f
    if (f()/=1) print *,101
    end subroutine

function x()
x=1
end




