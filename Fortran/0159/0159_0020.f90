interface int
 function ifun(r,a)
 end function
end interface
type int
 integer     cha
end type
type (int) :: sss

sss=int(1.0)
print *,'pass'
end

 function ifun(r,a)
ifun=1000
 end function
