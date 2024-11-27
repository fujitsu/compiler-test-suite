integer :: bb
integer :: aa
bb = fun(aa)
print *, aa,bb        
contains
function fun(xx)
    type(*) :: xx
    integer :: fun
    namelist /name/xx
    fun = 5
    end function
end 
       
