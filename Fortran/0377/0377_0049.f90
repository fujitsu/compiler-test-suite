character(len=10) :: cc01, cc02

cc01 = "default"
cc02 = "default "

if (selected_char_kind(name=cc01).ne.selected_char_kind(name="default") ) print *,'error 01'
if (selected_char_kind(name=cc02).ne.selected_char_kind(name="default ")) print *,'error 02'
if (selected_char_kind(name=cc01).ne.selected_char_kind(name=cc02)      ) print *,'error 03'

print *,'pass'

end
