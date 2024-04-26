 subroutine sub()
   IMPLICIT NONE
   integer,parameter::exp1=iachar('a',4)
   if (exp1.ne.iachar('a',4)) print *,'err1'
   end

call sub()
print *,'pass'
end
