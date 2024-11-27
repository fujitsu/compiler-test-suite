intrinsic :: float
intrinsic :: iabs

intrinsic :: nint
intrinsic :: ceiling
intrinsic :: digits
intrinsic :: exponent
intrinsic :: floor
intrinsic :: int
intrinsic :: maxexponent
intrinsic :: minexponent
intrinsic :: precision
intrinsic :: radix
intrinsic :: range

real   (kind = 4), parameter :: rr04_pa01 = 1.0
real   (kind = 8), parameter :: rr08_pa01 = 1.0

if (    float(nint(rr04_pa01, 4)   ).ne.iabs(nint(rr04_pa01, 4)   )) print *,'error  nint     -Ad'
if (    float(nint(rr08_pa01, 4)   ).ne.iabs(nint(rr08_pa01, 4)   )) print *,'error  nint     -Aq'

if (    float(ceiling(rr04_pa01, 4)).ne.iabs(ceiling(rr04_pa01, 4))) print *,'error  ceiling  -Ad'
if (    float(ceiling(rr08_pa01, 4)).ne.iabs(ceiling(rr08_pa01, 4))) print *,'error  ceiling  -Aq'

if (    float(floor(rr04_pa01, 4)  ).ne.iabs(floor(rr04_pa01, 4)  )) print *,'error  floor    -Ad'
if (    float(floor(rr08_pa01, 4)  ).ne.iabs(floor(rr08_pa01, 4)  )) print *,'error  floor    -Aq'

if (    float(int(rr04_pa01, 4)    ).ne.iabs(int(rr04_pa01, 4)    )) print *,'error  int      -Ad'
if (    float(int(rr08_pa01, 4)    ).ne.iabs(int(rr08_pa01, 4)    )) print *,'error  int      -Aq'

print *,'pass'

end
