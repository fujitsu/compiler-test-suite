subroutine s1
real(16),parameter::a=modulo(1._16,10._16)
real(16)          ::b=modulo(1._16,10._16)
real(16)          ::c
c=modulo(1._16,10._16)
print *,a
print *,b
print *,c
end
call s1
end
