block
interface
integer function fun(d1)
integer::d1
end function
end interface
end block
  block
  interface
  integer function fun(d1)
  integer::d1
  end function
  end interface
  if (fun(2)==3)print*,"1:Pass"
    block
    interface
    integer function fun(d1)
    integer::d1
    end function
    end interface
    if (fun(3)==5)print*,"2:Pass"
      block
      interface
      integer function fun(d1)
      integer::d1
      end function
      end interface
      if (fun(2)==5)print*,"3:Pass"
      end block
  end block
  if (fun(5)==9)print*,"4:Pass"
  block
  interface
  integer function fun(d1)
  integer::d1
  end function
  end interface
  end block
if (fun(1)==6)print*,"5:Pass"
end block
end

integer function fun(d1)
integer::d1
integer,save::ii=1
fun=d1+ii
ii=ii+1
end function
