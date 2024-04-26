type ty1
complex(4):: cmp1
end type 
type(ty1),target,save ::str1
type ty2
complex(8):: cmp2
end type 
type(ty2),target,save ::str2
type ty3
complex(16):: cmp3
end type 
type(ty3),target,save ::str3

real(4),pointer,save :: ptr11=>str1%cmp1%re
real(4),pointer,save :: ptr12=>str1%cmp1%im

real(8),pointer,save :: ptr21=>str2%cmp2%re
real(8),pointer,save :: ptr22=>str2%cmp2%im

real(16),pointer,save :: ptr31=>str3%cmp3%re
real(16),pointer,save :: ptr32=>str3%cmp3%im
str1%cmp1=(2.0,4.0)
if (ptr11.ne.2.0) print *,'err1'
if (ptr12.ne.4.0) print *,'err2'
str2%cmp2=(2.0,4.0)
if (ptr21.ne.2.0) print *,'err3'
if (ptr22.ne.4.0) print *,'err4'
str3%cmp3=(2.0,4.0)
if (ptr31.ne.2.0) print *,'err5'
if (ptr32.ne.4.0) print *,'err6'
print *,'pass'
end
