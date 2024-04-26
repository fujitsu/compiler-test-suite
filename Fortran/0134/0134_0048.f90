subroutine s1
integer*4,external::fun
integer(8)::j
j=0
i=fun(0,%VAL(loc(j)))
j=1
i=fun(1,j)
end
integer function fun(j1,j2)
integer(8)::j2
if (j1==0) then
    fun=0
else
    fun=j2
endif
end
call s1
print *,'pass'
end


