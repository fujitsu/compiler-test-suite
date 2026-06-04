block data
  integer::kkk
  common /com/ kkk
  bind(C,name="aaa") :: /com/
  data kkk/300/
end blockdata
module mod
  integer::kkk
  common /com/ kkk
  bind(C,name="aaa") :: /com/
  integer,bind(C,name="AAa") :: iii
  integer,bind(C,name="Aaa") :: jjj
  character,bind(C,name="AAA") :: cha
  contains 
  subroutine msub00()
    if ( iii .ne. 100 ) print *,'fail'
    if ( jjj .ne. 200 ) print *,'fail'
    if ( kkk .ne. 300 ) print *,'fail'
    if ( cha .ne. 'a' ) print *,'fail'
  end subroutine
end module
module mod1
  use mod
  contains
  subroutine msub01()
    iii = 100
    jjj = 200
    cha = 'a'
    if ( iii .ne. 100 ) print *,'fail'
    if ( jjj .ne. 200 ) print *,'fail'
    if ( kkk .ne. 300 ) print *,'fail'
    if ( cha .ne. 'a' ) print *,'fail'
  end subroutine
end module
use mod1
call msub01()
call msub00()
if ( iii .ne. 100 ) print *,'fail'
if ( jjj .ne. 200 ) print *,'fail'
if ( kkk .ne. 300 ) print *,'fail'
if ( cha .ne. 'a' ) print *,'fail'
print *,'ok'
end
