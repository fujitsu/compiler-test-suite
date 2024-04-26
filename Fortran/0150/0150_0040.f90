subroutine s1
 structure /name/ 
   integer:: x1
 end structure
 record /name/ v1
integer(8):: n1
 n1= loc(v1)
 call s2
 if (sizeof(v1)/=4)print *,202
 contains 
 subroutine s2
 record /name/ v1
 if (n1== loc(v1)) print *,101
 if (sizeof(v1)/=4)print *,201
end subroutine
end
call s1
print *,'pass'
end 
