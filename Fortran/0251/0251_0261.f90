interface
integer function fun1()
end function
end interface
interface
integer function fun2()
end function
end interface
block
interface
integer function fun2()
end function
end interface
if(fun1()+fun2()==2)print*,"1:Pass"
  block
  interface
  integer function fun1()
  end function
  end interface
  if(fun1()+fun2()==4)print*,"2:Pass"
  end block
  block
  interface
  integer function fun1()
  end function
  end interface
  end block
if (fun1()+fun2()==6)print*,"3:Pass"
end block
block
interface
integer function fun1()
end function
end interface
  block
  interface
  integer function fun2()
  end function
  end interface
  if (fun1()+fun2()==8)print*,"4:Pass"
  end block
  block
  interface
  integer function fun1()
  end function
  end interface
  if (fun1()+fun2()==10)print*,"5:Pass"
  end block
end block
if (fun1()==6)print*,"6:Pass"
end
integer function fun1()
integer,save::i=1
print*,"in fun1"
fun1=i
i=i+1
end function
integer function fun2()
integer,save::i=1
print*,"in fun2"
fun2=i
i=i+1
end function
