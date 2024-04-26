PROGRAM MAIN
integer,PARAMETER::b=len_trim( STRING = "FORTRAN    ", kind=8)


character(len = 20) :: ch1
integer::k= kind(len_trim( STRING = "FORTRAN    ",kind =8))

ch1 = "FORTRAN    "

print *,b ,"--",len_trim( STRING = ch1, kind =8)
if (b.NE.len_trim(STRING = ch1, kind = 8)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif


call check1(k,kind(len_trim(ch1,8)))

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


