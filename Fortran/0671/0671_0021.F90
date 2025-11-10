#define aaa $_aa
#define $_aa aaaa
#define bbb $_bbbbb
#define $_bbbbb xxxxx
#define aaaaa aa.eq.aa
#define aa.eq.aa vvv
#define inc ddd
#define  _fpp xxx
#define snfm "002.inc"
#include snfm
#include "003.inc"

#define vvv $_vvv
subroutine test01()
character,parameter:: vvv="a"
character,parameter:: ccc=vvv(1:1)
end subroutine

#define xxx $_xxx
subroutine test02()
integer  ,parameter:: xxx=4
integer  ,parameter:: ccc=10_xxx
end subroutine
