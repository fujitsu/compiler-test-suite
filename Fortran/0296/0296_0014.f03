use iso_c_binding
if(c_sizeof(c_int8_t)/=sizeof(c_int8_t)) call err(1)
if(c_sizeof(c_short)/=sizeof(c_short)) call err(2)
if(c_sizeof(c_long)/=sizeof(c_long)) call err(3)
if(c_sizeof(c_long_long)/=sizeof(c_long_long)) call err(4)
if(c_sizeof(c_signed_char)/=sizeof(c_signed_char)) call err(5)
if(c_sizeof(c_size_t)/=sizeof(c_size_t)) call err(6)
if(c_sizeof(c_int8_t)/=sizeof(c_int8_t)) call err(7)
if(c_sizeof(c_int16_t)/=sizeof(c_int16_t)) call err(8)
if(c_sizeof(c_int32_t)/=sizeof(c_int32_t)) call err(9)
if(c_sizeof(c_int64_t)/=sizeof(c_int64_t)) call err(10)
if(c_sizeof(c_int_least8_t)/=sizeof(c_int_least8_t)) call err(11)
if(c_sizeof(c_int_least16_t)/=sizeof(c_int_least16_t)) call err(12)
if(c_sizeof(c_int_least32_t)/=sizeof(c_int_least32_t)) call err(13)
if(c_sizeof(c_int_least64_t)/=sizeof(c_int_least64_t)) call err(14)
if(c_sizeof(c_int_fast8_t)/=sizeof(c_int_fast8_t)) call err(15)
if(c_sizeof(c_int_fast16_t)/=sizeof(c_int_fast16_t)) call err(16)
if(c_sizeof(c_int_fast32_t)/=sizeof(c_int_fast32_t)) call err(17)
if(c_sizeof(c_int_fast64_t)/=sizeof(c_int_fast64_t)) call err(18)
if(c_sizeof(c_intmax_t)/=sizeof(c_intmax_t)) call err(19)
if(c_sizeof(c_intptr_t)/=sizeof(c_intptr_t)) call err(20)
if(c_sizeof(c_float)/=sizeof(c_float)) call err(21)
if(c_sizeof(c_double)/=sizeof(c_double)) call err(22)
if(c_sizeof(c_long_double)/=sizeof(c_long_double)) call err(23)
if(c_sizeof(c_float_complex)/=sizeof(c_float_complex)) call err(24)
if(c_sizeof(c_double_complex)/=sizeof(c_double_complex)) call err(25)
if(c_sizeof(c_long_double_complex)/=sizeof(c_long_double_complex)) call err(26)
if(c_sizeof(c_bool)/=sizeof(c_bool)) call err(27)
if(c_sizeof(c_char)/=sizeof(c_char)) call err(28)
if(c_sizeof(c_null_char)/=sizeof(c_null_char)) call err(29)
if(c_sizeof(c_alert)/=sizeof(c_alert)) call err(30)
if(c_sizeof(c_backspace)/=sizeof(c_backspace)) call err(31)
if(c_sizeof(c_form_feed)/=sizeof(c_form_feed)) call err(32)
if(c_sizeof(c_new_line)/=sizeof(c_new_line)) call err(33)
if(c_sizeof(c_carriage_return)/=sizeof(c_carriage_return)) call err(34)
if(c_sizeof(c_horizontal_tab)/=sizeof(c_horizontal_tab)) call err(35)
if(c_sizeof(c_vertical_tab)/=sizeof(c_vertical_tab)) call err(36)

print *,'pass'
contains
subroutine err(i)
intent(in)::i
optional::i
print *,'err',i
end subroutine
end
