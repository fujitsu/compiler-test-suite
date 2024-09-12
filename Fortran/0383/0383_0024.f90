module mmm
  contains
  pure subroutine eee(xxxa)
    procedure(xxx) :: xxxa
  end subroutine
  pure function xxx()
    xxx = 1.0
  end function 
  pure function yyy()
    yyy = 1.0
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
      xxx = 3.0
    end function 
  end subroutine

  subroutine sub2()
  contains
    pure function yyy()
      yyy = 4.0
    end function
    pure subroutine eee2(yyya)
      procedure(yyy) :: yyya
    end subroutine
  end subroutine
end

print *,"pass "
end
