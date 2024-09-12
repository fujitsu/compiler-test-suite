program test
interface
  subroutine sub(p1,p2)
    class (*) :: p1(:), p2(:)
  end subroutine
end interface
INTEGER :: tgt1(5)
INTEGER :: tgt2(5)
tgt1(3) = 1
tgt2(3) = 2
call sub(tgt1,tgt2)
end program test

subroutine sub(p1,p2)
class (*) :: p1(:), p2(:)

select type (p1)
  type is (INTEGER)
    select type (p2)
      type is (INTEGER)
        if( (p1(3) .EQ. 1) .AND. (p2(3) .EQ. 2)) then
          print*,'pass'
        else
          print*,112
        endif
    end select
end select
end subroutine
