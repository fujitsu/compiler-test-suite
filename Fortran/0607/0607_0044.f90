integer :: i
DO 50, i = 1, 10
  associate (a=>i)
      if (a .EQ. 10) print *,"PASS"
  end associate
50 CONTINUE
end
