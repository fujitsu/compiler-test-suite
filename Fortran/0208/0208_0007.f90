 subroutine sub
implicit none
          real(kind=8) :: valr8 = 2.0_8
           real(kind=4) :: valr4 = 2.0_4
           real(kind=2) :: valr2 = 2.0_2
          complex(kind=8) :: valc8 = (2.0_8,1.0_8)
          complex(kind=4) :: valc4 = (2.0_4,1.0_4)
          complex(kind=2) :: valc2 =(2.0_2,1.0_2)
        
if (valr8/=2._8) print *,201
if (valr4/=2._4) print *,202
if (valr2/=2._2) print *,203,real(valr2,4)
if (abs(valc8-(2.0_8,1.0_8))>0.0001) print *,301
if (abs(valc4-(2.0_4,1.0_4))>0.0001) print *,302
if (abs(valc2-(2.0_2,1.0_2))>0.01) print *,303
         end subroutine sub
call sub
print *,'pass'
end
