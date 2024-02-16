subroutine sub
  complex(kind=8) :: valc8
  complex(kind=4) :: valc4
  complex(kind=2) :: valc2

  data valc8%re /3.0_8/
  data valc8%im /4.0_8/
  data valc4%re /3.0_8/
  data valc4%im /4.0_8/
  data valc2%re /3.0_8/
  data valc2%im /5.0_8/

  if (valc8 .ne. (3.0_8,4.0_8)) print *, "NG1"
  if (valc4 .ne. (3.0_8,4.0_8)) print *, "NG2"
  if (valc2 .ne. (3.0_8,5.0_8)) print *, "NG3"
end subroutine sub

call sub
print *,"OK"
end
