interface x
  function f1()
  end 
end interface
integer:: y(2),z
call ss
contains
subroutine ss
interface x
  function f2(k)
  end 
end interface
interface y
  function f3()
  end 
end interface
interface z
  function f4()
  end 
end interface
write(1,*)1, x()
write(1,*)2, x(2)
write(1,*)3, y()
write(1,*)4, z()
rewind 1
read(1,*) k,a;if (k/=1) print *,201;if (a/=1) print *,202
read(1,*) k,a;if (k/=2) print *,201;if (a/=2) print *,202
read(1,*) k,a;if (k/=3) print *,201;if (a/=3) print *,202
read(1,*) k,a;if (k/=4) print *,201;if (a/=4) print *,202
print *,'pass'
end
end
function f1()
f1=1
end
function f2(k)
f2=k
end
function f3()
f3=3
end
function f4()
f4=4
end
