use, intrinsic :: ieee_arithmetic
type(ieee_status_type) ::status_value
call ieee_get_status(status_value)
call ieee_set_flag(ieee_all, (/.false.,.false.,.false.,.false.,.false./))
call ieee_set_status(status_value)
print *,"pass"
end
