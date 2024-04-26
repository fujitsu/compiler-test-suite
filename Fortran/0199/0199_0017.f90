type ty1
real   (4):: cmp11
real   (4):: cmp12
real   (8):: cmp21
real   (8):: cmp22
real   (16):: cmp31
real   (16):: cmp32
end type 
type(ty1),target,save ::str

real(4),pointer,save :: ptr11=>str%cmp11
real(4),pointer,save :: ptr12=>str%cmp12

real(8),pointer,save :: ptr21=>str%cmp21
real(8),pointer,save :: ptr22=>str%cmp22

real(16),pointer,save :: ptr31=>str%cmp31
real(16),pointer,save :: ptr32=>str%cmp32
str%cmp11=2.0
str%cmp12=4.0
if (ptr11.ne.2.0) print *,'err1'
if (ptr12.ne.4.0) print *,'err2'
str%cmp21=2.0
str%cmp22=4.0
if (ptr21.ne.2.0) print *,'err3'
if (ptr22.ne.4.0) print *,'err4'
str%cmp31=2.0
str%cmp32=4.0
if (ptr31.ne.2.0) print *,'err5'
if (ptr32.ne.4.0) print *,'err6'
print *,'pass'
end
