subroutine s
implicit complex(a)
 a01=- af()
end
function af()
implicit complex(a)
 af=0
end
  call s
 print *,'pass'
end

