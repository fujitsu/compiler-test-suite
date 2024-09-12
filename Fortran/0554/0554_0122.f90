parameter (k1=selected_char_kind("default"))
parameter (k2=selected_char_kind("ascii"))
parameter (k3=selected_char_kind("ISO_1064"))
parameter (k4=selected_char_kind("defAult"))
parameter (k5=selected_char_kind("asCii"))
parameter (k6=selected_char_kind("ISo_1064"))
parameter (k7=selected_char_kind("default  "))
parameter (k8=selected_char_kind("ascii    "))
parameter (k9=selected_char_kind("ISO_1064  "))
call check(k1, selected_char_kind("default"))
call check(k2,selected_char_kind("ascii"))
call check(k3,selected_char_kind("ISO_1064"))
call check(k4,selected_char_kind("defAult"))
call check(k5,selected_char_kind("asCii"))
call check(k6,selected_char_kind("ISo_1064"))
call check(k7,selected_char_kind("default  "))
call check(k8,selected_char_kind("ascii    "))
call check(k9,selected_char_kind("ISO_1064  "))

end

subroutine check(x, y)
integer x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? ( Error) ???'
else
print*," OK"
endif
end subroutine
