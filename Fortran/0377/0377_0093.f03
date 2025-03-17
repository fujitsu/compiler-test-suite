character:: ccc
ccc="aa"
if (-1 .ne.selected_char_kind("aa")) print *,'fail'
if (-1 .ne.selected_char_kind("")) print *,'fail'
if (1.ne.selected_char_kind("default")) print *,'fail'
if (1.ne.selected_char_kind("ascii")) print *,'fail'
if (4.ne.selected_char_kind("iso_10646")) print *,'fail'
if (1.ne.selected_char_kind("default ")) print *,'fail'
if (1.ne.selected_char_kind("ascii ")) print *,'fail'
if (4.ne.selected_char_kind("iso_10646 ")) print *,'fail'
if (-1 .ne.selected_char_kind("defaulta")) print *,'fail'
if (-1 .ne.selected_char_kind("asciia")) print *,'fail'
if (-1 .ne.selected_char_kind("iso_10646a")) print *,'fail'
if (-1 .ne.selected_char_kind(" def ault ")) print *,'fail'
if (-1 .ne.selected_char_kind(" asc ii ")) print *,'fail'
if (-1 .ne.selected_char_kind(" iso_ 10646 ")) print *,'fail'
if (-1 .ne.selected_char_kind("default a")) print *,'fail'
if (-1 .ne.selected_char_kind("ascii a")) print *,'fail'
if (-1 .ne.selected_char_kind("iso_10646 a")) print *,'fail'
print *,"pass"
end
