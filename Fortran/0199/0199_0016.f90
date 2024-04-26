type ty1
complex(4):: cmp1
complex(8):: cmp2
complex(16):: cmp3
end type 
type(ty1),target,save ::str

real(4),pointer,save :: ptr11=>str%cmp1%re
real(4),pointer,save :: ptr12=>str%cmp1%im

real(8),pointer,save :: ptr21=>str%cmp2%re
real(8),pointer,save :: ptr22=>str%cmp2%im

real(16),pointer,save :: ptr31=>str%cmp3%re
real(16),pointer,save :: ptr32=>str%cmp3%im
str%cmp1=(2.0,4.0)
if (ptr11.ne.2.0) print *,'err1'
if (ptr12.ne.4.0) print *,'err2'
str%cmp2=(2.0,4.0)
if (ptr21.ne.2.0) print *,'err3'
if (ptr22.ne.4.0) print *,'err4'
str%cmp3=(2.0,4.0)
if (ptr31.ne.2.0) print *,'err5'
if (ptr32.ne.4.0) print *,'err6'
print *,'pass'
end
