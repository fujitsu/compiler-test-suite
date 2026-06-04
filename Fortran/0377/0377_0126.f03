call test01()
call test02()
print *,"pass"
end
subroutine test01()
character(len=100),parameter ::c="                                                                                                     "
character(len=20000):: ccc
character(len=20000) :: vvv
parameter(vvv="default"//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//"a")
ccc="default"//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//"a"
if (-1.ne.selected_char_kind("default  a")) print *,'fail'
if (-1.ne.selected_char_kind(vvv)) print *,'fail'
if (-1.ne.selected_char_kind(ccc)) print *,'fail'
end
subroutine test02()
character(len=100),parameter ::c="                                                                                                     "
character(len=20000):: ccc
character(len=20000) :: vvv
parameter(vvv="default"//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//"")
ccc="default"//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//c//""
if (1.ne.selected_char_kind("default  ")) print *,'fail'
if (1.ne.selected_char_kind(vvv)) print *,'fail'
if (1.ne.selected_char_kind(ccc)) print *,'fail'
end
