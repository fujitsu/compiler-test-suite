use, intrinsic :: ieee_arithmetic
type(ieee_flag_type)::l(5)
logical ll(5),ls(5)
ls=.false.
l= ieee_all
call ieee_get_flag(ieee_all,ll)
if(any(ll.neqv.[(.false.,i=1,5)])) print *,'err1'
call ieee_set_flag(l,.true.)
call ieee_get_flag(ieee_all,ls)
if(any(ls.neqv.[(.true.,i=1,5)])) print *,'err2'
print *,'pass'
end
