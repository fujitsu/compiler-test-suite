PROGRAM MAIN

character(len = 7,kind = 4), parameter :: c = "abcdbcd"

character(len =3,kind = 4),parameter::d = "bcd"

integer,parameter :: b = index(c,d,.true.)

character(len =7, kind = 4)::e
character(len =3, kind = 4)::f
integer,parameter::k = kind(index(c,d,.true.))

e = "abcdbcd"
f = "bcd"
print *,b ,"--",index(e,f,.true.)
if (b.NE.index(e,f,.true.)) then
 print *,'??? (Error: utfchar->integer) ???'
else
 print*, "utfchar->integer OK"
endif

call check(k, kind(index(e,f,.true.)))

END

    subroutine check(x,y)
      integer x,y
      print *,"KIND::",x ,"--", "KIND::",y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine

