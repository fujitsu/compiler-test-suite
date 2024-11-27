use ,intrinsic :: iso_c_binding
 intrinsic :: sin,cos
 real :: sin,cos
 type(c_funptr)::x
 procedure(sin),pointer:: xxx
 procedure(integer),pointer:: xxx2
 procedure(),pointer:: xxx3
 integer,external,pointer:: xxx4
 x=c_funloc(xxx)
 x=c_funloc(xxx2)
 x=c_funloc(xxx3)
 x=c_funloc(xxx4)
 end


subroutine test()
 intrinsic :: sin
real :: sin
end

