integer*8     :: len, sta
character*100 :: com
len=1
if (selected_char_kind("ISO_10646").ne.4) print *,'fail'
call get_command(com,len,sta)
end
