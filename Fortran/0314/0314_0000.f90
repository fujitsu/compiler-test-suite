use moduleA
use moduleB
call subA
call subB
end

module moduleA
contains
subroutine subA
  print *,'subA'
end subroutine
end

module moduleB
contains
subroutine subB
  print *,'subB'
end subroutine
end
