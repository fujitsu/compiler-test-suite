PROGRAM MAIN
integer,PARAMETER::b=index( STRING = "FORTRAN",SUBSTRING = "RT", BACK=.false.,KIND = 1)

character(len = 7) :: ch1
character(len = 2)::ch2


integer::k= kind(index( "FORTRAN","ORT",.false.,1))

ch1 = "FORTRAN"
ch2 = "RT"


print *,b ,"--",index( STRING = ch1,SUBSTRING ="RT",BACK = .false.,KIND =1)
if (b.NE.index(ch1,ch2,.false.,1)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif



call check1(k,kind(index(ch1,ch2,.false.,1)))

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


