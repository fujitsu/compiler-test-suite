PROGRAM MAIN
integer,PARAMETER::b(4)=ichar(C =(/'a','b','c','d'/), kind =1)


character(len =1)::c(4)

integer::k= kind(ichar('a',1))

c = (/'a','b','c','d'/)

DO I = 1,  4
print *,b(i) ,"--",ichar(C =c(i),kind = 1)
if (b(i).NE.ichar(c(i),1)) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif

END do


call check1(k,kind(ichar(c,1)))

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


