    character(0),parameter,dimension(3) :: a = (/"1",'3',"5"/)
    character(0)          ,dimension(3) :: aa = (/"1",'3',"5"/)

    integer,parameter :: b4 = lbound(a//a,1)
    integer :: error

    error = 0
    if (b4 /= lbound(aa//aa,1)) error = error+1

    if (error /= 0) then
      print *, " +++ test item 1 : ng +++ ",error
    else
      print *, " test ok "
    endif
    end
