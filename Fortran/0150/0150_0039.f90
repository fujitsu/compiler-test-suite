subroutine s1
 structure /name/ 
   integer:: x1
 end structure
 record /name/ v1
integer(8):: n1
 n1= loc(v1)
 block    
 structure /name/ 
   integer:: x21
   integer:: x22
 end structure
 record /name/ v2
 if (n1== loc(v2)) print *,101
 if (sizeof(v1)/=4)print *,201
 if (sizeof(v2)/=8)print *,202
end block
end
call s1
print *,'pass'
end 
