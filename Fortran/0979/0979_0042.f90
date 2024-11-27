module mod1
 real,target :: aaa, bbb
 protected :: aaa,bbb
 real,pointer :: in, out
 contains
 subroutine sub()
 allocate(in,out)
  aaa = 1
  in => aaa
  out => bbb
  out = in
 end subroutine 
end module
use mod1
call sub()
if (bbb.ne.1) write(6,*) "NG"
print *,'pass'
end

