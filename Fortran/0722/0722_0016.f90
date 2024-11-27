interface
function fun()
end function
end interface
integer,pointer:: a(:)
integer,pointer:: b(:)
allocate(a(5))
allocate(b(5))
a(1:5)=>b(1:5)
end
