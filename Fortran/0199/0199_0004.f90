call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
complex(4),target,save:: cmp1
real(4),pointer,save :: ptr11=>cmp1%re
real(4),pointer,save :: ptr12=>cmp1%im
cmp1=(2.0,4.0)
if (ptr11.ne.2.0) print *,'err'
if (ptr12.ne.4.0) print *,'err'
end

subroutine test02()
complex(8),target,save:: cmp2
real(8),pointer,save :: ptr21=>cmp2%re
real(8),pointer,save :: ptr22=>cmp2%im
cmp2=(2.0,4.0)
if (ptr21.ne.2.0) print *,'err'
if (ptr22.ne.4.0) print *,'err'
end

subroutine test03()
complex(16),target,save:: cmp3
real(16),pointer,save :: ptr31=>cmp3%re
real(16),pointer,save :: ptr32=>cmp3%im
cmp3=(2.0,4.0)
if (ptr31.ne.2.0) print *,'err'
if (ptr32.ne.4.0) print *,'err'
end
