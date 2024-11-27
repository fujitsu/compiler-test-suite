character(len= 1,kind=4),parameter::cc1=1_'A'
character(len= 1,kind=4),parameter::cc2=1_'B'
print *,kind(iachar  (cc1)),kind(ichar   (cc2))

print *,selected_char_kind(name=" default")

end
