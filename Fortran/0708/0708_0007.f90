 call s1
 print *,'pass'
 end
 subroutine s1
 INTEGER*1 i
 if (size((/ ( "abc", i      =-42,103,9)/))/=17)print *,'fail'
 if (any((/ ( "abc", i      =-42,103,9)/)/=(/('abc',j=1,17)/)))print *,'fail'
end
