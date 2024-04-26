module mod22
character(len=10)::string
end module

program main
use mod22

associate(aa=>string)
 aa='xxxpassxxx'
 print*,aa(4:7)
end associate
end
