interface
subroutine sub(arr)
interface
subroutine suba(arr)
character(len=*) :: arr
value :: arr
end subroutine
subroutine sub1(arr)
value :: arr
character(len=*) :: arr
end subroutine
subroutine sub2(arr)
character(len=*),value :: arr
end subroutine
subroutine sub3(arr)
character(len=1),value :: arr*(*)
end subroutine
subroutine sub4(arr)
character(len=*),value :: arr*(1)
end subroutine
end interface
character(len=*) :: arr
value :: arr
end subroutine
subroutine sub1(arr)
value :: arr
character(len=*) :: arr
end subroutine
subroutine sub2(arr)
character(len=*),value :: arr
end subroutine
subroutine sub3(arr)
character(len=1),value :: arr*(*)
end subroutine
subroutine sub4(arr)
character(len=*),value :: arr*(1)
end subroutine
end interface
end
