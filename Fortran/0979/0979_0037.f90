module mod1
  integer,protected:: aaa,bbb
  namelist /aa/aaa,bbb
  contains
  subroutine sub()
  namelist /aa/aaa,bbb
   aaa=1
   bbb=2
  end subroutine
end module
use mod1
call sub()
if (aaa.ne.1) write(6,*) "NG"
if (bbb.ne.2) write(6,*) "NG"
print *,"pass"
end
