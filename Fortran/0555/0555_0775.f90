program test
interface
  subroutine sub(p1)
    class (*) :: p1(2,*)
  end subroutine
end interface 

INTEGER :: tgt1(4,5)

tgt1=5
tgt1(3,2)=7
call sub(tgt1)
end program test

subroutine sub(p1)
class (*) :: p1(2,*)
INTEGER :: p2

p2=8
select type (p1)
  type is (INTEGER)
    p1(1,1) = p2
    if(p1(1,1) == 8 .and. p1(1,4) == 7 .and. p1(1,2) == 5) then
      print*,'pass'
    else
      print*,101
    endif
  type is(REAL)
    print*,102
end select
end subroutine
