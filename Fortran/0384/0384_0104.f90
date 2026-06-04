integer ,pointer ,external :: xxx
call sub(1)
call sub(2,xxx)
print *,"pass"
contains
subroutine sub(i,iii)
integer,optional ,pointer ,external :: iii
logical :: ll
ll = present(iii)
if (i.eq.1) then
 if (ll.neqv..false.) print *,'fail'
end if
if (i.eq.2) then
 if (ll.eqv..false.) print *,'fail'
end if
end subroutine
end

