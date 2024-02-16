      subroutine sub
           real(kind=8) :: valr8 = 2.0_8
           real(kind=4) :: valr4 = 2.0_4
           real(kind=2) :: valr2 = 2.0_2
v=2.0
if (valr2/=2.0_2) print *,201
if (valr2/=v    ) print *,202
if (valr4/=2.0_2) print *,211
if (valr4/=v    ) print *,212
if (valr8/=2.0_2) print *,221
if (valr8/=v    ) print *,222
if (valr2/=valr4  ) print *,242
if (valr2/=valr8  ) print *,243
         end subroutine sub
call sub
print *,'pass'
end
