subroutine s1
integer(1):: I,J,MASK
if (abs(hypot( 3.0 , 4.0 ) - sqrt( 3.0 ** 2 + 4.0**2 ) ) > 0.0001) print *,101
if (abs(hypot( 3.0 , 4.0 ) - 5.0                       ) > 0.0001) print *,102
I=18
J=13
MASK=22
if (MERGE_BITS( I , J, MASK) /= &
     IOR( IAND( I,MASK) , IAND(J,NOT(MASK)))  ) print *,203 
if (MERGE_BITS( I , J, MASK) /= 27_1  ) print *,204 
end
subroutine s2
integer:: I,J,MASK
I=18
J=13
MASK=22
if (MERGE_BITS( I , J, MASK) /= &
     IOR( IAND( I,MASK) , IAND(J,NOT(MASK)))  ) print *,1203 
if (MERGE_BITS( I , J, MASK) /= 27  ) print *,1204 
end
call s1
call s2
print *,'pass'
end


