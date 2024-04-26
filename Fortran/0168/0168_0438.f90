module mod01
integer::a01=1
end
module mod02
integer::a02=2
end
module mod03
integer::a03=3
end
module mod04
integer::a04=4
end
module mod05
integer::a05=5
end
module mod06
integer::a06=6
end
module mod07
integer::a07=7
end
module mod08
integer::a08=8
end
module mod09
integer::a09=9
end
module mod10
integer::a10=10
end
module mod100
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s100
contains
subroutine s100
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
end subroutine
end module
module mod200
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s200
contains
subroutine s200
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
end subroutine
end module
module mod300
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s300
contains
subroutine s300
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
end subroutine
end module
module mod400
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s400
contains
subroutine s400
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
end subroutine
end module
module mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s500
contains
subroutine s500
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
end subroutine
end module

module mod1000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s1000
contains
subroutine s1000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100
call s200
call s300
call s400
call s500
end subroutine
end
module mod2000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s2000
contains
subroutine s2000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100
call s200
call s300
call s400
call s500
end subroutine
end
module mod3000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s3000
contains
subroutine s3000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100
call s200
call s300
call s400
call s500
end subroutine
end
module mod4000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s4000
contains
subroutine s4000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100
call s200
call s300
call s400
call s500
end subroutine
end
module mod5000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: s5000
contains
subroutine s5000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100
call s200
call s300
call s400
call s500
end subroutine
end

module mod10000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
private 
public:: s10000
contains
subroutine s10000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s1000
call s2000
call s3000
call s4000
call s5000
end subroutine
end
module mod20000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
private 
public:: s20000
contains
subroutine s20000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s1000
call s2000
call s3000
call s4000
call s5000
end subroutine
end
module mod30000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
private 
public:: s30000
contains
subroutine s30000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s1000
call s2000
call s3000
call s4000
call s5000
end subroutine
end
module mod40000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
private 
public:: s40000
contains
subroutine s40000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s1000
call s2000
call s3000
call s4000
call s5000
end subroutine
end
module mod50000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
private 
public:: s50000
contains
subroutine s50000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s1000
call s2000
call s3000
call s4000
call s5000
end subroutine
end
module mod100000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
use mod10000
use mod20000
use mod30000
use mod40000
use mod50000
private 
public:: s100000
contains
subroutine s100000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s10000
call s20000
call s30000
call s40000
call s50000
end subroutine
end
module mod200000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
use mod10000
use mod20000
use mod30000
use mod40000
use mod50000
private 
public:: s200000
contains
subroutine s200000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s10000
call s20000
call s30000
call s40000
call s50000
end subroutine
end
module mod300000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
use mod10000
use mod20000
use mod30000
use mod40000
use mod50000
private 
public:: s300000
contains
subroutine s300000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s10000
call s20000
call s30000
call s40000
call s50000
end subroutine
end
module mod400000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
use mod10000
use mod20000
use mod30000
use mod40000
use mod50000
private 
public:: s400000
contains
subroutine s400000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s10000
call s20000
call s30000
call s40000
call s50000
end subroutine
end
module mod500000
use mod100
use mod200
use mod300
use mod400
use mod500
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mod1000
use mod2000
use mod3000
use mod4000
use mod5000
use mod10000
use mod20000
use mod30000
use mod40000
use mod50000
private 
public:: s500000
contains
subroutine s500000
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s10000
call s20000
call s30000
call s40000
call s50000
end subroutine
end
module m1
use    mod100000
use    mod200000
use    mod300000
use    mod400000
use    mod500000
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: t1
contains
subroutine t1
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100000
call s200000
call s300000
call s400000
call s500000
end subroutine
end
module m2
use    mod100000
use    mod200000
use    mod300000
use    mod400000
use    mod500000
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: t2
contains
subroutine t2
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100000
call s200000
call s300000
call s400000
call s500000
end subroutine
end
module m3
use    mod100000
use    mod200000
use    mod300000
use    mod400000
use    mod500000
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: t3
contains
subroutine t3
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100000
call s200000
call s300000
call s400000
call s500000
end subroutine
end
module m4
use    mod100000
use    mod200000
use    mod300000
use    mod400000
use    mod500000
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: t4
contains
subroutine t4
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100000
call s200000
call s300000
call s400000
call s500000
end subroutine
end
module m5
use    mod100000
use    mod200000
use    mod300000
use    mod400000
use    mod500000
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: t5
contains
subroutine t5
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call s100000
call s200000
call s300000
call s400000
call s500000
end subroutine
end
module mm1
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t11
contains
subroutine t11
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm2
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t12
contains
subroutine t12
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm3
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t13
contains
subroutine t13
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm4
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t14
contains
subroutine t14
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm5
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t15
contains
subroutine t15
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm6
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t16
contains
subroutine t16
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm7
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t17
contains
subroutine t17
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm8
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t18
contains
subroutine t18
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t19
contains
subroutine t19
call t1
call t2
call t3
call t4
call t5
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
end subroutine
end
module mm0
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use m1
use m2
use m3
use m4
use m5
private 
public:: t10
contains
subroutine t10
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t1
call t2
call t3
call t4
call t5
end subroutine
end
module mz0
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z0
contains
subroutine z0
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz1
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z1
contains
subroutine z1
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz2
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z2
contains
subroutine z2
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz3
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z3
contains
subroutine z3
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz4
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z4
contains
subroutine z4
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz5
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z5
contains
subroutine z5
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz6
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z6
contains
subroutine z6
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz7
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z7
contains
subroutine z7
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz8
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z8
contains
subroutine z8
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mz9
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: z9
contains
subroutine z9
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module mza
use mm0
use mm1
use mm2
use mm3
use mm4
use mm5
use mm6
use mm7
use mm8
use mm9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
private 
public:: za
contains
subroutine za
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call t10
call t11
call t12
call t13
call t14
call t15
call t16
call t17
call t18
call t19
end subroutine
end
module md0
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d0
contains
subroutine d0
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md1
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d1
contains
subroutine d1
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md2
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d2
contains
subroutine d2
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md3
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d3
contains
subroutine d3
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md4
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d4
contains
subroutine d4
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md5
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d5
contains
subroutine d5
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md6
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d6
contains
subroutine d6
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md7
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d7
contains
subroutine d7
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md8
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d8
contains
subroutine d0
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module md9
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
use mz0
use mz1
use mz2
use mz3
use mz4
use mz5
use mz6
use mz7
use mz8
use mz9
private 
public:: d9
contains
subroutine d9
if (a01/=1.or.a02/=2.or.a03/=3.or.a04/=4.or.a05/=5.or.a06/=6.or. &
    a07/=7.or.a08/=8.or.a09/=9.or.a10/=10) print *,100
call z0
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call z8
end subroutine
end
module me0
use  md0
use  md1
use  md2
use  md3
use  md4
use  md5
use  md6
use  md7
use  md8
use  md9
contains
subroutine e0
call d0
end subroutine
end
use me0
call e0
print *,'pass'
end
