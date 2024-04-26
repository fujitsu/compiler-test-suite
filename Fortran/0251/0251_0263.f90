interface
integer function fun()
end function
end interface
call sub
if (fun()==5)print*,"5:Pass"
contains
subroutine sub
block
interface
integer function fun()
end function
end interface
end block
if (fun()==1)print*,"1:Pass"
block
interface
integer function fun()
end function
end interface
if (fun()==2)print*,"2:Pass"
  block
  interface
  integer function fun()
  end function
  end interface
  end block
if (fun()==3)print*,"3:Pass"
end block
block
interface
integer function fun()
end function
end interface
if (fun()==4)print*,"4:Pass"
end block
end subroutine
end

integer function fun()
integer, save::ii=1
fun=ii
ii=ii+1
end function
