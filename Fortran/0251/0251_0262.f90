interface
integer function aa()
end function
end interface
block
interface
integer function bb()
end function
end interface
if(aa()+bb()==3)print*,"1:pass"
  block
  interface
  integer function cc()
  end function
  end interface
  if(aa()+bb()+cc()==6)print*,"2:pass"
    block
    interface
    integer function dd()
    end function
    end interface
    if(aa()+bb()+cc()+dd()==10)print*,"3:pass"
    end block
  end block
end block
block
interface
integer function ee()
end function
end interface
  interface
  integer function gg()
  end function
  end interface
if(aa()+ee()==6)print*,"4:pass"
  block
  interface
  integer function ff()
  end function
  end interface
  if(aa()+ee()+ff()==12)print*,"5:pass"
  end block
  block
  interface
  integer function gg()
  end function
  end interface
  end block
if(aa()+ee()+gg()==13)print*,"6:pass"
end block
end
integer function aa()
aa=1
end function
integer function bb()
bb=2
end function
integer function cc()
cc=3
end function
integer function dd()
dd=4
end function
integer function ee()
ee=5
end function
integer function ff()
ff=6
end function
integer function gg()
gg=7
end function

