module mod
  integer,pointer,protected :: iii,jjj
  integer,target :: tiii=100,tjjj=200
  contains
  subroutine sub()
    iii=>tiii
    jjj=>tjjj
  end subroutine
end module
use mod
call sub()
if (iii/=100)write(6,*) "NG"
if (jjj/=200)write(6,*) "NG"
tiii = 300
tjjj = 400
if (iii/=300)write(6,*) "NG"
if (jjj/=400)write(6,*) "NG"
print *,'pass'
end
