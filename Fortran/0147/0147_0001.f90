subroutine x(k,c)
character,intent(out):: c(k)
     c(1) = '1'
     c(2) = c(1)
end
character(1):: c(2)
call x(2,c)
print *,'pass'
end
