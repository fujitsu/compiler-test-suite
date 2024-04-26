character(len=10)::string='xxxpassxxx'

associate(aa=>string)
 print*,aa(4:7)
end associate

end
