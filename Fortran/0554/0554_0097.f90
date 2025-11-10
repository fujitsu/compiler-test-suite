#define EQUAL_CHECK(a, b) (abs(real(a) - real(b))/abs(real(a)) .gt. 1.0D-14 .or. (abs(imag(a) - imag(b)))/abs(real(a)) .gt. 1.0D-14)
PROGRAM MAIN
complex*16,PARAMETER::b= 4_8 ** ((3.0_8, 3.0_8))

integer*8::c
complex*16::d

integer::k= kind((4_8 ** (3.0_8 , 3.0_8)))

c = 4_8
d = ((3.0_8 , 3.0_8))

if (EQUAL_CHECK(b,(c ** d))) then
 print *,b ,"--",(c ** d)
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind((c ** d)))
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
