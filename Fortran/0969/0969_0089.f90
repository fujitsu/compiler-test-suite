intrinsic :: selected_int_kind
intrinsic :: selected_real_kind

integer  (kind =  4)            :: i04, i04a(1)
integer  (kind =  4), parameter :: ipa04 = 1, ipa04a = selected_int_kind(ipa04)

i04 = selected_int_kind(ipa04)

print *,ipa04
print *,ipa04a

end
