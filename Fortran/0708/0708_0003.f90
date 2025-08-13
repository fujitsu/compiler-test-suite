 call s1
 print *,'pass'
 end
 subroutine s1
 implicit integer(kind=8)(a),integer(2)(j),integer(4)(b)
 a13=+2147483648_8
 bb=32768
 write(3,*) (/ (1 , i=       2147483648, a13,1) /)
 write(3,*) (/ (1 , i= a13,  2147483648, 1    ) /)
 write(3,*) (/ (1 , i= a13,  a13, 2147483648  ) /)
 write(3,*) (/ (1 , i=       2147483648, a13,1) /)
 write(3,*) (/ (1 , j=       32768, bb,1_2)/)
 write(3,*) (/ (1 , j= bb,   32768, 1_2)/)
 write(3,*) (/ (1 , j= 1_2,   bb, 32768)/)
 end
