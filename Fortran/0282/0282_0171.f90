PROGRAM MAIN
integer,PARAMETER::b(2)=index( "FORTRAN",(/"RT","AN"/))

integer::backend(2)
character(len = 7) :: ch1
character(len = 3)::ch2

integer::k= kind(index( "FORTRAN","ORT",.false.))


ch1 = "FORTRAN"
ch2 = "ORT"

backend = index(ch1,(/"RT","AN"/))

do i =1,2
print *,b ,"--",index( ch1,(/"RT","AN"/))
if (b(i).NE.backend(i)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

end do

call check1(k,kind(index(ch1,ch2,.false.)))

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


