PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
 
SELECT TYPE(A=>ifun())
 TYPE IS(first)
   print*,211
 TYPE IS(second)

  if(A(3)%i1==2) then
   print*,'pass1'
  else
   print*,101,A(3)%i1
  endif

  if(all(A(1:2)%i1 /=12) .and. all(A(4:6)%i1/=12)) then 
    print*,212
  else 
    print*,'pass'
  endif
 TYPE IS(third)
   print*,213
END SELECT

contains
function ifun()
CLASS(first),ALLOCATABLE :: ifun(:)
ALLOCATE(second::ifun(6))
ifun%i1=12
ifun(3)%i1=2
end function 
END PROGRAM
