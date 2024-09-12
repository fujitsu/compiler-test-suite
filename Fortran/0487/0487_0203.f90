subroutine s( x,y ) bind(c)
logical x,y
value :: y
end 
subroutine t( x,y ) bind(c)
integer x,y
value :: y
end 
subroutine u( x,y ) bind(c)
logical(1) x,y
value :: y
end 
print *,'pass'
end
