character(len=10),parameter::string='xxxpassxxx'

associate(aa=>string(2:9))
 print*,aa(3:6)

 if(aa(1:2)/='xx' .and. aa(7:8)/='xx') print*,101
end associate

end
