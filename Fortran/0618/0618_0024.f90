function func() result(ret)
character(5),allocatable :: ret(:)
allocate(ret(5))
ret = (/"abcde","fghij","klmno","pqrst","uvwxy"/)
end function

function ifunc() result(ret)
  interface
    function aaa() result(ret)
      character(5),allocatable :: ret(:)
    end function
  end interface
  procedure(aaa),pointer :: ret
  procedure(aaa) :: func
  ret => func
end function

interface
function aaa() result(ret)
  interface
    function bbb() result(ret)
      character(5),allocatable :: ret(:)
    end function
  end interface
  procedure(bbb),pointer :: ret
end function
function bbb() result(ret)
  character(5),allocatable :: ret(:)
end function
end interface
procedure(aaa),pointer :: ppp
procedure(bbb),pointer :: ppp2
procedure(aaa) :: ifunc
character(5),allocatable :: cha(:)
allocate(cha(5))
ppp=>ifunc
ppp2=>ppp()
cha = ppp2()
if (all(cha/=(/"abcde","fghij","klmno","pqrst","uvwxy"/))) print *,'ng'
print *,'pass'
end
