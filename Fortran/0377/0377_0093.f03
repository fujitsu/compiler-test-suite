character:: ccc
ccc="aa"
if (-1 .ne.selected_char_kind("aa")) call errtra
if (-1 .ne.selected_char_kind("")) call errtra
if (1.ne.selected_char_kind("default")) call errtra
if (1.ne.selected_char_kind("ascii")) call errtra
if (4.ne.selected_char_kind("iso_10646")) call errtra
if (1.ne.selected_char_kind("default ")) call errtra
if (1.ne.selected_char_kind("ascii ")) call errtra
if (4.ne.selected_char_kind("iso_10646 ")) call errtra
if (-1 .ne.selected_char_kind("defaulta")) call errtra
if (-1 .ne.selected_char_kind("asciia")) call errtra
if (-1 .ne.selected_char_kind("iso_10646a")) call errtra
if (-1 .ne.selected_char_kind(" def ault ")) call errtra
if (-1 .ne.selected_char_kind(" asc ii ")) call errtra
if (-1 .ne.selected_char_kind(" iso_ 10646 ")) call errtra
if (-1 .ne.selected_char_kind("default a")) call errtra
if (-1 .ne.selected_char_kind("ascii a")) call errtra
if (-1 .ne.selected_char_kind("iso_10646 a")) call errtra
print *,"pass"
end
