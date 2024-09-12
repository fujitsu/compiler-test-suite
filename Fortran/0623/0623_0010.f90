module mod
 intrinsic :: iabs
 intrinsic :: idim
 procedure(iabs), pointer :: p01
 procedure(idim), pointer :: p02
end module

module mod01
 use mod, aaaa => iabs, bbbb => idim
 intrinsic :: idnint
 intrinsic :: index
 procedure(aaaa), pointer :: pp_01
 procedure(bbbb), pointer :: pp_02
end module

module mod03
 use mod01, cccc => aaaa, dddd => bbbb, aaaa => idnint, bbbb => index
 intrinsic :: isign
 intrinsic :: len
 procedure(aaaa), pointer :: pp_03
 procedure(bbbb), pointer :: pp_04
 procedure(cccc), pointer :: pp_05
 procedure(dddd), pointer :: pp_06
end module

module mod06
 use mod03, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => isign, bbbb => len
 intrinsic :: sign
 intrinsic :: sin
 procedure(aaaa), pointer :: pp_07
 procedure(bbbb), pointer :: pp_08
 procedure(cccc), pointer :: pp_09
 procedure(dddd), pointer :: pp_10
 procedure(eeee), pointer :: pp_11
 procedure(ffff), pointer :: pp_12
end module

module mod10
 use mod06, gggg => eeee, hhhh => ffff, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => sign, bbbb => sin
 intrinsic :: amod
 intrinsic :: anint
 procedure(aaaa), pointer :: pp_13
 procedure(bbbb), pointer :: pp_14
 procedure(cccc), pointer :: pp_15
 procedure(dddd), pointer :: pp_16
 procedure(eeee), pointer :: pp_17
 procedure(ffff), pointer :: pp_18
 procedure(gggg), pointer :: pp_19
 procedure(hhhh), pointer :: pp_20
end module

module mod11
 use mod06, gggg => eeee, hhhh => ffff, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => sign, bbbb => sin
 intrinsic :: asin
 intrinsic :: atan
 procedure(aaaa), pointer :: pp_13
 procedure(bbbb), pointer :: pp_14
 procedure(cccc), pointer :: pp_15
 procedure(dddd), pointer :: pp_16
 procedure(eeee), pointer :: pp_17
 procedure(ffff), pointer :: pp_18
 procedure(gggg), pointer :: pp_19
 procedure(hhhh), pointer :: pp_20
end module

module mod07
 use mod03, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => isign, bbbb => len
 intrinsic :: abs
 intrinsic :: acos
 procedure(aaaa), pointer :: pp_07
 procedure(bbbb), pointer :: pp_08
 procedure(cccc), pointer :: pp_09
 procedure(dddd), pointer :: pp_10
 procedure(eeee), pointer :: pp_11
 procedure(ffff), pointer :: pp_12
end module

module mod12
 use mod07, gggg => eeee, hhhh => ffff, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => abs, bbbb => acos
 intrinsic :: atan2
 intrinsic :: cabs
 procedure(aaaa), pointer :: pp_13
 procedure(bbbb), pointer :: pp_14
 procedure(cccc), pointer :: pp_15
 procedure(dddd), pointer :: pp_16
 procedure(eeee), pointer :: pp_17
 procedure(ffff), pointer :: pp_18
 procedure(gggg), pointer :: pp_19
 procedure(hhhh), pointer :: pp_20
end module

module mod04
 use mod01, cccc => aaaa, dddd => bbbb, aaaa => idnint, bbbb => index
 intrinsic :: mod
 intrinsic :: nint
 procedure(aaaa), pointer :: pp_03
 procedure(bbbb), pointer :: pp_04
 procedure(cccc), pointer :: pp_05
 procedure(dddd), pointer :: pp_06
end module

module mod08
 use mod04, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => mod, bbbb => nint
 intrinsic :: aimag
 intrinsic :: aint
 procedure(aaaa), pointer :: pp_07
 procedure(bbbb), pointer :: pp_08
 procedure(cccc), pointer :: pp_09
 procedure(dddd), pointer :: pp_10
 procedure(eeee), pointer :: pp_11
 procedure(ffff), pointer :: pp_12
end module

module mod13
 use mod08, gggg => eeee, hhhh => ffff, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => aimag, bbbb => aint
 intrinsic :: ccos
 intrinsic :: cexp
 procedure(aaaa), pointer :: pp_13
 procedure(bbbb), pointer :: pp_14
 procedure(cccc), pointer :: pp_15
 procedure(dddd), pointer :: pp_16
 procedure(eeee), pointer :: pp_17
 procedure(ffff), pointer :: pp_18
 procedure(gggg), pointer :: pp_19
 procedure(hhhh), pointer :: pp_20
end module

module mod02
 use mod, aaaa => iabs, bbbb => idim
 intrinsic :: sinh
 intrinsic :: sqrt
 procedure(aaaa), pointer :: pp_01
 procedure(bbbb), pointer :: pp_02
end module

module mod05
 use mod02, cccc => aaaa, dddd => bbbb, aaaa => sinh, bbbb => sqrt
 intrinsic :: tan
 intrinsic :: tanh
 procedure(aaaa), pointer :: pp_03
 procedure(bbbb), pointer :: pp_04
 procedure(cccc), pointer :: pp_05
 procedure(dddd), pointer :: pp_06
end module

module mod09
 use mod05, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => tan, bbbb => tanh
 intrinsic :: alog
 intrinsic :: alog10
 procedure(aaaa), pointer :: pp_07
 procedure(bbbb), pointer :: pp_08
 procedure(cccc), pointer :: pp_09
 procedure(dddd), pointer :: pp_10
 procedure(eeee), pointer :: pp_11
 procedure(ffff), pointer :: pp_12
end module

module mod14
 use mod09, gggg => eeee, hhhh => ffff, eeee => cccc, ffff => dddd, cccc => aaaa, dddd => bbbb, aaaa => alog, bbbb => alog10
 intrinsic :: clog
 intrinsic :: conjg
 procedure(aaaa), pointer :: pp_13
 procedure(bbbb), pointer :: pp_14
 procedure(cccc), pointer :: pp_15
 procedure(dddd), pointer :: pp_16
 procedure(eeee), pointer :: pp_17
 procedure(ffff), pointer :: pp_18
 procedure(gggg), pointer :: pp_19
 procedure(hhhh), pointer :: pp_20
end module

print *,'pass'

end
