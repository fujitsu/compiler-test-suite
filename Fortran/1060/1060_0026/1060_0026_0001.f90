subroutine sub (x)
real,optional,pointer :: x(:,:,:)
data i /0/
entry ent(x)
if (present(x)) then
   if (i .eq. 0) then
   else if(i .eq. 1) then
   else
    stop '2-1'
   endif
   x = x + 1
else
   if (i .eq. 2) then
   else if (i .eq. 3) then
   else
    stop '2-2'
   endif
endif
i=i+1
end subroutine
