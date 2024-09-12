a=1.0
        call sub( a )
if (a/=2) print *,201
print *,'pass'
        contains
           subroutine sub( d )
              real,intent(OUT) :: d
goto 1
       2      d=d+1.0
return
1 d=1
  goto 2
           end subroutine
     end
