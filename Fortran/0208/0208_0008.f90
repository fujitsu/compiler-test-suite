integer,parameter::k=2
  real(k) :: ar2
  real(k) :: ar
  real(4) :: a
         call sub(ar2)
         call sub(ar)
         call su(a)
print *,'pass'
         contains
         subroutine sub(dr2)
         real(k) :: r3
         real(k) :: dr2
          dr2=1.
          r3=dr2
         end
         subroutine su(dr2)
         real(4) :: r3
         real(4) :: dr2
         dr2=1.
          r3=dr2
         end
        end
