type       HLAAO3ES
  INTEGER*1 HHUE(2)
END type
write(1,*) &
HLAAO3ES(&
   [ INTEGER(1)::( &
      4_1, &
      [INTEGER(1)::7_1], &
        N=68972,68972) & 
   ] &
) 
rewind 1
read(1,*) n1,n2
if (n1/=4) print *,201
if (n2/=7) print *,202
print *,'pass'
END 
