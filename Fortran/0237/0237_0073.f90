call s((1.0_4,2.0_8))
print *,'pass'
contains
subroutine s(a)
complex(8)::a
if (abs(a-(1._8,2._8))>0.00001)print *,101
end subroutine
end
