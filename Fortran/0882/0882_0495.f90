program test
interface
  subroutine sub(p1,p2)
    class (*) :: p1, p2
  end subroutine
end interface
INTEGER :: tgt1
INTEGER :: tgt2
tgt1 = 1
tgt2 = 2
call sub(tgt1,tgt2)
end program test

subroutine sub(p1,p2)
REAL :: A(10, 10), B(10, 10) = 1.0
INTEGER::arr(10),arr2(10)
class (*) :: p1, p2
arr(1)=2
arr(2)=2
arr(3)=2
arr(4)=2
arr(5)=2
arr(6)=2
arr(7)=3
arr(8)=2
arr(9)=2
arr(10)=2

select type (p1)
  type is (INTEGER)
    select type (p2)
      type is (INTEGER)
        FORALL(p1 = 1:10,p2=1:10)
          A(p1, p2) = REAL (p1 + p2 - 2)
          B(p1, p2) = A(p1, p2) + B(p1, p2) * REAL (p1 * p2)
        
        WHERE(arr .eq. p2)
          arr2=5
        ELSEWHERE
          arr2=7
        ENDWHERE
        END FORALL 
        if( (p1 .EQ. 1) .AND. (p2 .EQ. 2) .AND. arr2(7) .eq. 7 ) then
          print*,'pass'
        else
          print*,112,p1,p2,arr2(7)
        endif
    end select
end select
end subroutine
