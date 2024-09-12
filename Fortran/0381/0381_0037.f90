module m1
integer k2
bind(c)::k2
common /xx/ k3,k4
bind(c)::/xx/

integer,allocatable::n01
integer,allocatable::n02(:,:)

integer k5,k6
bind(c)::k7,k6

integer k8,k9
bind(c)::k9
data k8/0/

integer k10,k11
bind(c)::k11

common /yy/ k12,k13
bind(c,name='ww')::/yy/
integer,allocatable::n03(:,:)
integer,allocatable::n04
end

subroutine s1
use m1
common /zz/ n1,n2
bind(c)::/zz/
if (n1/=0)print *,101
if (n2/=0)print *,102

if (k2/=0) print *,202
if (k3/=0) print *,203
if (k4/=0) print *,204
if (k5/=0) print *,205
if (k6/=0) print *,206
if (k7/=0) print *,207
if (k8/=0) print *,208
if (k9/=0) print *,209
if (k10/=0) print *,210
if (k11/=0) print *,211
if (k12/=0) print *,212
if (k13/=0) print *,213
if (allocated(n01))print *,301
if (allocated(n02))print *,302
if (allocated(n03))print *,303
if (allocated(n04))print *,304
allocate(n01,n02(2,3),n04,n03(3,4))
n01=1
n02=1
n03=1
n04=1
end
call s2
call s1
call s3
print *,'pass'
end
subroutine s2
use m1
k5=0
k10=0
end
subroutine s3
use m1
if (.not.allocated(n01))print *,401
if (.not.allocated(n02))print *,402
if (.not.allocated(n03))print *,403
if (.not.allocated(n04))print *,404
if (n01/=1)print *,501
if (n04/=1)print *,503
if (any(n02/=1))print *,502
if (any(n03/=1))print *,504
end
