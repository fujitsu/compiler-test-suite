print *,'pass'
end

subroutine sub01()
type ty1
  character*4 chc(10)
end type
type (ty1) :: str(10)
data (str(i)%chc(i),i=1,10) /10*'a'/ 
end
