call sub()
print *,'pass'
end
subroutine sub( )
save i,j,/myblock/,k
common /myblock/ x1,x2
end
