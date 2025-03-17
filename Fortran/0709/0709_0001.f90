 call s1
 print *,'pass'
 end
 subroutine s1
 integer,parameter::j1=kind( huge( 1_1 ) )
 integer,parameter::j2=kind( huge( 1_2 ) )
 integer,parameter::j3=kind( huge( 1_4 ) )
 integer,parameter::j4=kind( huge( 1_8 ) )
 if (kind( huge( 1_1 ) )/= 1)print *,'fail'
 if (kind( huge( 1_2 ) )/= 2)print *,'fail'
 if (kind( huge( 1_4 ) )/= 4)print *,'fail'
 if (kind( huge( 1_8 ) )/= 8)print *,'fail'
 if (j1/=1)print *,'fail'
 if (j2/=2)print *,'fail'
 if (j3/=4)print *,'fail'
 if (j4/=8)print *,'fail'
 end
