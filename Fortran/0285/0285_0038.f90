character(len=10),target::string='xxxpassxxx'

interface
function fun(dmystring)
character(len=10)::dmystring,fun 
end function
end interface

associate(aa=>fun(string))
 print*,aa(4:7)
end associate
end

function fun(dmystring)
character(len=10)::dmystring,fun 
fun = dmystring
end function
