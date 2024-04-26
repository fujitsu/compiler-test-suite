program main
implicit none

interface
 subroutine sub()
 end subroutine
end interface

character(len=8)::o1,o2
common/a/ o1,o2

o1='xfail1xx'
o2='xfail2xx'

associate(aa=>o1,bb=>o2)

call sub()

print*,aa(2:6),bb(2:6)
end associate
end program

subroutine sub()
 character(len=8)::o1,o2
 common/a/ o2,o1

 o1='xpass2xx'
 o2='xpass1xx'

end subroutine
