use,intrinsic::iso_c_binding,only:c_null_char
interface
  function strcmp(str1,str2) bind(c)
   use,intrinsic::iso_c_binding,only:c_int,c_char
   integer(c_int)::strcmp
   character(kind=c_char),dimension(*)::str1,str2
  end function
end interface
character(LEN=5)::st1,st2
st1='ABCD'//c_null_char
st2='ABCD'//c_null_char
if (strcmp(st1,st2)==0)write(12,*)"same string"
print *,'pass'
end
