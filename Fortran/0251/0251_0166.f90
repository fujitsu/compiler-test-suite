call ss(3)

contains
subroutine ss(d)
integer,value :: d
block
integer:: arr(d)
arr=0
print*,'arr',arr
end block
end subroutine
end
