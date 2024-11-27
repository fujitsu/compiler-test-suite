 call s1
 print *,'pass'
 end
 subroutine s1
   j=5
   call sub(F((/(real(i),i=1,j)/)))
 contains
ELEMENTAL REAL*8 FUNCTION F (A)
   REAL, INTENT (IN) :: A
   REAL (SELECTED_REAL_KIND (PRECISION (A)*2)) :: WORK
   WORK=A
   F=WORK
END FUNCTION F
 subroutine sub(x)
  real*8,dimension(:)::x
  if (any(abs(x-(/(real(i),i=1,5)/))>0.1))write(6,*) "NG"
 end subroutine
end
