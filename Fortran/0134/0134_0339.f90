 logical*8 ::i12
 logical::a5 = 12
 i12=12
 a5= i12.eqv.a5
 if (.not.a5)print *,1008
print *,'pass'
end
