module mod01
 intrinsic :: iabs
 intrinsic :: idim
 procedure(iabs), pointer :: p01
 procedure(idim), pointer :: p02
end module

module mod02
 use mod01, aaaa => iabs, zzzz => idim
 procedure(aaaa), pointer :: p03
 procedure(zzzz), pointer :: p04
end module

module mod03
 use mod02, bbbb => aaaa, yyyy => zzzz
 procedure(bbbb), pointer :: p05
 procedure(yyyy), pointer :: p06
end module

module mod04
 use mod03, cccc => bbbb, xxxx => yyyy
 procedure(cccc), pointer :: p07
 procedure(xxxx), pointer :: p08
end module

module mod05
 use mod04
 procedure(cccc), pointer :: p09
 procedure(xxxx), pointer :: p10
end module

module mod06
 use mod05, dddd => cccc, wwww => xxxx
 procedure(dddd), pointer :: p11
 procedure(wwww), pointer :: p12
end module

print *,'pass'

end
