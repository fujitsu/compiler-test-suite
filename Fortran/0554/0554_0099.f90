PROGRAM MAIN
complex*16,PARAMETER::b=  ((3.0_8, 3.0_8)) ** 4.0_8

real*8::c
complex*16::d ,e
integer::k= kind(((3.0_8, 3.0_8) ** 4.0_8))

c = 4.0_8
d = ((3.0_8 , 3.0_8))

e=( d **c )
if (b.ne.( d **c )) then
if (abs(b-( d **c )) < 0.000000000001) e=b
endif
if (b.ne.( e )) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind((d ** c)))
END

     subroutine check1(x,y)
      integer x,y
     print *,"KIND::",x ,"--", "KIND::",y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine
