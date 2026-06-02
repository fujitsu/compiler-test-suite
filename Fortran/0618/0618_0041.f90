intrinsic abs
intrinsic acos
intrinsic aimag
intrinsic aint
intrinsic alog
intrinsic alog10
intrinsic amod
intrinsic anint
intrinsic asin
intrinsic atan
intrinsic atan2
intrinsic cabs
intrinsic ccos
intrinsic cexp
intrinsic clog
intrinsic conjg
intrinsic cos
intrinsic cosh
intrinsic csin
intrinsic csqrt
intrinsic dabs
intrinsic dacos
intrinsic dasin
intrinsic datan
intrinsic datan2
intrinsic dcos
intrinsic dcosh
intrinsic ddim
intrinsic dexp
intrinsic dim
intrinsic dint
intrinsic dlog
intrinsic dlog10
intrinsic dmod
intrinsic dnint
intrinsic dprod
intrinsic dsign
intrinsic dsin
intrinsic dsinh
intrinsic dsqrt
intrinsic dtan
intrinsic dtanh
intrinsic exp
intrinsic iabs
intrinsic idim
intrinsic idnint
intrinsic index
intrinsic isign
intrinsic len
intrinsic mod
intrinsic nint
intrinsic sign
intrinsic sin
intrinsic sinh
intrinsic sqrt
intrinsic tan
intrinsic tanh

procedure(abs),    pointer ::  pabs
procedure(acos),   pointer ::  pacos
procedure(aimag),  pointer ::  paimag
procedure(aint),   pointer ::  paint
procedure(alog),   pointer ::  palog
procedure(alog10), pointer ::  palog10
procedure(amod),   pointer ::  pamod
procedure(anint),  pointer ::  panint
procedure(asin),   pointer ::  pasin
procedure(atan),   pointer ::  patan
procedure(atan2),  pointer ::  patan2
procedure(cabs),   pointer ::  pcabs
procedure(ccos),   pointer ::  pccos
procedure(cexp),   pointer ::  pcexp
procedure(clog),   pointer ::  pclog
procedure(conjg),  pointer ::  pconjg
procedure(cos),    pointer ::  pcos
procedure(cosh),   pointer ::  pcosh
procedure(csin),   pointer ::  pcsin
procedure(csqrt),  pointer ::  pcsqrt
procedure(dabs),   pointer ::  pdabs
procedure(dacos),  pointer ::  pdacos
procedure(dasin),  pointer ::  pdasin
procedure(datan),  pointer ::  pdatan
procedure(datan2), pointer ::  pdatan2
procedure(dcos),   pointer ::  pdcos
procedure(dcosh),  pointer ::  pdcosh
procedure(ddim),   pointer ::  pddim
procedure(dexp),   pointer ::  pdexp
procedure(dim),    pointer ::  pdim
procedure(dint),   pointer ::  pdint
procedure(dlog),   pointer ::  pdlog
procedure(dlog10), pointer ::  pdlog10
procedure(dmod),   pointer ::  pdmod
procedure(dnint),  pointer ::  pdnint
procedure(dprod),  pointer ::  pdprod
procedure(dsign),  pointer ::  pdsign
procedure(dsin),   pointer ::  pdsin
procedure(dsinh),  pointer ::  pdsinh
procedure(dsqrt),  pointer ::  pdsqrt
procedure(dtan),   pointer ::  pdtan
procedure(dtanh),  pointer ::  pdtanh
procedure(exp),    pointer ::  pexp
procedure(iabs),   pointer ::  piabs
procedure(idim),   pointer ::  pidim
procedure(idnint), pointer ::  pidnint
procedure(index),  pointer ::  pindex
procedure(isign),  pointer ::  pisign
procedure(len),    pointer ::  plen
procedure(mod),    pointer ::  pmod
procedure(nint),   pointer ::  pnint
procedure(sign),   pointer ::  psign
procedure(sin),    pointer ::  psin
procedure(sinh),   pointer ::  psinh
procedure(sqrt),   pointer ::  psqrt
procedure(tan),    pointer ::  ptan
procedure(tanh),   pointer ::  ptanh

integer      :: i4
real         :: r4,r4_2
real(kind=8) :: r8,r8_2
complex      :: c4

character(len=5) :: s1,s2
procedure(sin) ,pointer :: p

i4=4
r4=8.0
r4_2=0.0
r8=16.0
r8_2=0.0
c4=(32.0,32.0)
s1='abcde'
s2='b'

p       => cos

pabs    => abs
pacos   => acos
paimag  => aimag
paint   => aint
palog   => alog
palog10 => alog10
pamod   => amod
panint  => anint
pasin   => asin
patan   => atan
patan2  => atan2
pcabs   => cabs
pccos   => ccos
pcexp   => cexp
pclog   => clog
pconjg  => conjg
pcos    => cos
pcosh   => cosh
pcsin   => csin
pcsqrt  => csqrt
pdabs   => dabs
pdacos  => dacos
pdasin  => dasin
pdatan  => datan
pdatan2 => datan2
pdcos   => dcos
pdcosh  => dcosh
pddim   => ddim
pdexp   => dexp
pdim    => dim
pdint   => dint
pdlog   => dlog
pdlog10 => dlog10
pdmod   => dmod
pdnint  => dnint
pdprod  => dprod
pdsign  => dsign
pdsin   => dsin
pdsinh  => dsinh
pdsqrt  => dsqrt
pdtan   => dtan
pdtanh  => dtanh
pexp    => exp
piabs   => iabs
pidim   => idim
pidnint => idnint
pindex  => index
pisign  => isign
plen    => len
pmod    => mod
pnint   => nint
psign   => sign
psin    => sin
psinh   => sinh
psqrt   => sqrt
ptan    => tan
ptanh   => tanh

pabs    => pabs
pacos   => pacos
paimag  => paimag
paint   => paint
palog   => palog
palog10 => palog10
pamod   => pamod
panint  => panint
pasin   => pasin
patan   => patan
patan2  => patan2
pcabs   => pcabs
pccos   => pccos
pcexp   => pcexp
pclog   => pclog
pconjg  => pconjg
pcos    => pcos
pcosh   => pcosh
pcsin   => pcsin
pcsqrt  => pcsqrt
pdabs   => pdabs
pdacos  => pdacos
pdasin  => pdasin
pdatan  => pdatan
pdatan2 => pdatan2
pdcos   => pdcos
pdcosh  => pdcosh
pddim   => pddim
pdexp   => pdexp
pdim    => pdim
pdint   => pdint
pdlog   => pdlog
pdlog10 => pdlog10
pdmod   => pdmod
pdnint  => pdnint
pdprod  => pdprod
pdsign  => pdsign
pdsin   => pdsin
pdsinh  => pdsinh
pdsqrt  => pdsqrt
pdtan   => pdtan
pdtanh  => pdtanh
pexp    => pexp
piabs   => piabs
pidim   => pidim
pidnint => pidnint
pindex  => pindex
pisign  => pisign
plen    => plen
pmod    => pmod
pnint   => pnint
psign   => psign
psin    => psin
psinh   => psinh
psqrt   => psqrt
ptan    => ptan
ptanh   => ptanh

if (abs(r4).ne.pabs(r4)) print *,'fail'
if (acos(r4_2).ne.pacos(r4_2)) print *,'fail'
if (aimag(c4).ne.paimag(c4)) print *,'fail'
if (aint(r4).ne.paint(r4)) print *,'fail'
if (alog(r4).ne.palog(r4)) print *,'fail'
if (alog10(r4).ne.palog10(r4)) print *,'fail'
if (amod(r4,r4).ne.pamod(r4,r4)) print *,'fail'
if (anint(r4).ne.panint(r4)) print *,'fail'
if (asin(r4_2).ne.pasin(r4_2)) print *,'fail'
if (atan(r4_2).ne.patan(r4_2)) print *,'fail'
if (atan2(r4,r4).ne.patan2(r4,r4)) print *,'fail'
if (cabs(c4).ne.pcabs(c4)) print *,'fail'
if (ccos(c4).ne.pccos(c4)) print *,'fail'
if (cexp(c4).ne.pcexp(c4)) print *,'fail'
if (clog(c4).ne.pclog(c4)) print *,'fail'
if (conjg(c4).ne.pconjg(c4)) print *,'fail'
if (cos(r4).ne.pcos(r4)) print *,'fail'
if (cosh(r4).ne.pcosh(r4)) print *,'fail'
if (csin(c4).ne.pcsin(c4)) print *,'fail'
if (csqrt(c4).ne.pcsqrt(c4)) print *,'fail'
if (dabs(r8).ne.pdabs(r8)) print *,'fail'
if (dacos(r8_2).ne.pdacos(r8_2)) print *,'fail'
if (dasin(r8_2).ne.pdasin(r8_2)) print *,'fail'
if (datan(r8).ne.pdatan(r8)) print *,'fail'
if (datan2(r8,r8).ne.pdatan2(r8,r8)) print *,'fail'
if (dcos(r8).ne.pdcos(r8)) print *,'fail'
if (dcosh(r8).ne.pdcosh(r8)) print *,'fail'
if (ddim(r8,r8).ne.pddim(r8,r8)) print *,'fail'
if (dexp(r8).ne.pdexp(r8)) print *,'fail'
if (dim(r4,r4).ne.pdim(r4,r4)) print *,'fail'
if (dint(r8).ne.pdint(r8)) print *,'fail'
if (dlog(r8).ne.pdlog(r8)) print *,'fail'
if (dlog10(r8).ne.pdlog10(r8)) print *,'fail'
if (dmod(r8,r8).ne.pdmod(r8,r8)) print *,'fail'
if (dnint(r8).ne.pdnint(r8)) print *,'fail'
if (dprod(r4,r4).ne.pdprod(r4,r4)) print *,'fail'
if (dsign(r8,r8).ne.pdsign(r8,r8)) print *,'fail'
if (dsin(r8).ne.pdsin(r8)) print *,'fail'
if (dsinh(r8).ne.pdsinh(r8)) print *,'fail'
if (dsqrt(r8).ne.pdsqrt(r8)) print *,'fail'
if (dtan(r8).ne.pdtan(r8)) print *,'fail'
if (dtanh(r8).ne.pdtanh(r8)) print *,'fail'
if (exp(r4).ne.pexp(r4)) print *,'fail'
if (iabs(i4).ne.piabs(i4)) print *,'fail'
if (idim(i4,i4).ne.pidim(i4,i4)) print *,'fail'
if (idnint(r8).ne.pidnint(r8)) print *,'fail'
if (index(s1,s2).ne.pindex(s1,s2)) print *,'fail'
if (isign(i4,i4).ne.pisign(i4,i4)) print *,'fail'
if (len(s1).ne.plen(s1)) print *,'fail'
if (mod(i4,i4).ne.pmod(i4,i4)) print *,'fail'
if (nint(r4).ne.pnint(r4)) print *,'fail'
if (sign(r4,r4).ne.psign(r4,r4)) print *,'fail'
if (sin(r4).ne.psin(r4)) print *,'fail'
if (sinh(r4).ne.psinh(r4)) print *,'fail'
if (sqrt(r4).ne.psqrt(r4)) print *,'fail'
if (tan(r4).ne.ptan(r4)) print *,'fail'
if (tanh(r4).ne.ptanh(r4)) print *,'fail'

print *,'pass'

end
