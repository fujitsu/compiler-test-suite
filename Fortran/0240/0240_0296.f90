interface
pure subroutine zee (var1, var2)
real,pointer::var1,var2
end subroutine
end interface
real,pointer:: a,b
call zee(a,b)
print *,'pass'
end
pure subroutine zee (var1,var2)
real,pointer::var1,var2
end subroutine
