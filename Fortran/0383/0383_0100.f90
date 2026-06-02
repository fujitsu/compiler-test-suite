interface 
subroutine sub
end subroutine
endinterface
procedure(sub),pointer:: b=>null(),c=>null()
real,pointer:: d=>null(),e=>null()
if (associated(b)) print *,'fail'
if (associated(c)) print *,'fail'
if (associated(d)) print *,'fail'
if (associated(e)) print *,'fail'
print *,'pass '
end
