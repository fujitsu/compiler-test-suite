module m1
     TYPE, PRIVATE :: z_i
      CLASS(*), POINTER :: i_of_z
      TYPE(z_i), POINTER :: next => NULL()
     END TYPE z_i
contains
subroutine set
end subroutine
subroutine s1(ts,r)
      CLASS(z_i), INTENT(inout) :: ts
      CLASS(z_i), INTENT(in) :: r
      IF (ASSOCIATED(r%next)) THEN
        ts%next=> r%next
      ENDIF
end subroutine 
end
use m1
print *,'pass'
end



