interface
 function ifunc01(string, substring, back) result(irst01)
  character(*)      :: string
  character(*)      :: substring
  logical, optional :: back
  integer           :: irst01
 end function
end interface

procedure(ifunc01)          :: pindex01
procedure(ifunc01), pointer :: pindexp01

pindexp01 => pindex01

if (pindex01('test program', 'test', .false.).ne.pindex01('test program', 'test')) print *,'1'

print *,'pass'

end

function ifunc01(string, substring, back) result(irst01)
 character(*)      :: string
 character(*)      :: substring
 logical, optional :: back
 integer           :: irst01
 if (present(back)) then
  irst01 = index(string, substring, back)
 else
  irst01 = index(string, substring)
 end if
end function

function pindex01(string, substring, back) result(prst01)
 character(*)      :: string
 character(*)      :: substring
 logical, optional :: back
 integer           :: prst01
 if (present(back)) then
  prst01 = index(string, substring, back)
 else
  prst01 = index(string, substring)
 end if
end function
