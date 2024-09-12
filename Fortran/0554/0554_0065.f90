PROGRAM MAIN
character(LEN = 10),PARAMETER::a="FRIENDS"
character(LEN = 10),PARAMETER::b ="FORTRAN"
logical,DIMENSION(1:3)::c=lge(a,b)

character(len = 10) :: ch1
character(len = 10) :: ch2
integer::k= kind(LGE(STRING_A = "FRIENDS", STRING_B ="FORTRAN" ))
ch1 = "FRIENDS"
ch2 = "FORTRAN"

do i=1,3

print *,c(i) ,"--",lge(STRING_A =ch1,STRING_B = ch2)
if (c(i).NEQV.lge(STRING_A =ch1,STRING_B = ch2)) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

call check1(k,kind(LGE(STRING_A = ch1, STRING_B = ch2 )))
enddo

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
