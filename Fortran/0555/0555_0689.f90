program test
interface
  subroutine sub(p1)
    class (*) :: p1
  end subroutine
end interface 

INTEGER :: tgt1
call sub(tgt1)
end program test

subroutine sub(p1)
class (*) :: p1
INTEGER :: p2

p2=1
select type (p1)
  type is (INTEGER)
    p1 = p2
    if(p1 .EQ. 1) then
      print*,'pass'
    else
      print*,101
    endif
  type is(REAL)
    print*,102
end select
end subroutine
