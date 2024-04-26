subroutine s1
 if ( shifta(ibset(0_1 , bit_size(0_1) -1_1) , 2_1)/= &
      shiftl( 7_1 , bit_size(0_1) -3_1) ) print *,101
 if ( shifta(ibset(0_2 , bit_size(0_2) -1_2) , 2_2)/= &
      shiftl( 7_2 , bit_size(0_2) -3_2) ) print *,102
 
end
subroutine s2
integer,parameter::N=x'80001000'
if (shifta(N, 8)/=-8388592) print *,103
end
call s1
call s2
print *,'pass'
end
