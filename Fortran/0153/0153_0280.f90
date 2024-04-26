subroutine s1
integer(8) addr(2)
   integer:: x1
   addr(1)= loc(x1)
   block
     volatile :: x1
     addr(2)= loc(x1)
   end block
   if (addr(1)/=addr(2)) print *,101
end
subroutine s2
integer(8) addr(2)
   integer:: x1
   addr(1)= loc(x1)
   block
     asynchronous :: x1
     addr(2)= loc(x1)
   end block
   if (addr(1)/=addr(2)) print *,101
end
subroutine s3
integer(8) addr(2)
   integer:: x1
   addr(1)= loc(x1)
   block
     asynchronous :: x1
     volatile :: x1
     addr(2)= loc(x1)
   end block
   if (addr(1)/=addr(2)) print *,101
end
subroutine s4
integer(8) addr(2)
     volatile :: x1
   integer:: x1
   addr(1)= loc(x1)
   block
     asynchronous :: x1
     addr(2)= loc(x1)
   end block
   if (addr(1)/=addr(2)) print *,101
end
call s1
call s2
call s3
call s4
print *,'pass'
end
