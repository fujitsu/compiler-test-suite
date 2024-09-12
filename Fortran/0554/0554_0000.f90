PROGRAM MAIN
integer,PARAMETER::b=AND( b'00100001', 1 )

integer::c = b'00100001'
integer::d = 1

integer::k= kind(AND( b'00100001', 1))

PRINT*,"KIND:",k, "---",KIND((and(c,d)))

call check(b,AND(c,d))

END

      subroutine check(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: boz->integer) ???'
      else
        print*, "boz->integer OK"
      endif
      end subroutine
