 integer,parameter::k2=2
    REAL(KIND=k2):: b
   b=SPACING( .1_k2)
if (abs(b-7.450E-09)>0.01_k2) print *,101
print *,'pass'
end
