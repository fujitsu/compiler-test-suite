#define EQUAL_CHECK(a, b) (abs(real(a) - real(b))/abs(real(a)) .gt. 1.0D-6 .or. (abs(imag(a) - imag(b)))/abs(real(a)) .gt. 1.0D-6)
PROGRAM MAIN
complex*8,PARAMETER::b= ((4.0_4, 4.0_4)) ** ((3.0_4, 3.0_4))

complex*8::c
complex*8::d

integer::k= kind(((4.0_4, 4.0_4) ** (3.0_4 , 3.0_4)))
c = ((4.0_4, 4.0_4))
d = ((3.0_4 , 3.0_4))

print *,b ,"--",(c ** d)
if (EQUAL_CHECK(b,(c ** d))) then
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
