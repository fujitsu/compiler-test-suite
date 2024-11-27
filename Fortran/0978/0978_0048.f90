interface
subroutine csub(arg1,arg2)
integer,value::arg1
integer::arg2
end subroutine csub
end interface
call csub(2,3)
print *,'pass'
end
subroutine csub(arg1,arg2)
integer,value::arg1
integer::arg2
end subroutine csub
