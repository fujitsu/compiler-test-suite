use,intrinsic::iso_c_binding,only:c_sizeof,c_int,c_size_t
integer(c_int),dimension(10)::i
integer(c_size_t)::k
k = c_sizeof(i)
if (1.eq.2)print *,k
if (kind(k).eq.4) then
if (k.ne.40) print *,'err'
endif
print *,'pass'
end
