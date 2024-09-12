module mmm
contains
 pure subroutine eee(xxxa)
 procedure(xxx) :: xxxa
 end subroutine
 pure function xxx()
 end function 

 pure function yyy()
 end function
 pure subroutine eee2(yyya)
 procedure(yyy) :: yyya
 end subroutine
end

module mmm2
contains
subroutine sub()
contains
 pure subroutine eee(xxxa)
 procedure(xxx) :: xxxa
 end subroutine
 pure function xxx()
 end function 
end subroutine

subroutine sub2()
contains
 pure function yyy()
 end function
 pure subroutine eee2(yyya)
 procedure(yyy) :: yyya
 end subroutine
end subroutine
end


print *,"pass"
end
