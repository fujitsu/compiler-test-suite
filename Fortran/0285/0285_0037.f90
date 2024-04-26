character(len=10),target::string='xxxpassxxx'

associate(aa=>fun(string))
 print*,aa(4:7)
end associate

contains
function fun(dmystring)
character(len=10)::dmystring,fun 
fun = dmystring
end function
end
