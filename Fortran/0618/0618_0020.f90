function cha01() result(ret)
  character(10) :: ret
  ret = "abcdefghij"
end function
function ifunc01() result(ret)
  interface
    function cha01() result(ret)
      character(10) :: ret
    end function
  end interface
  procedure(character(10)),pointer :: ret
  ret =>cha01
end function
interface
function ifunc01() result(ret)
  interface
    function cha01() result(ret)
      character(10) :: ret
    end function
  end interface
  procedure(character(10)),pointer :: ret
end function
end interface
procedure(character(10)),pointer :: ppp
ppp=>ifunc01()
if ( 'abcdefghij' .ne. ppp()) print *,'ng'
print *,'pass'
end