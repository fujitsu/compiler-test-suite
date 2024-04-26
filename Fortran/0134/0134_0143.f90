subroutine s
integer:: a(3),b(3),c(3)
a(3)=3
b(3)=13
c(3)=23
a(3)=3
b(3)=13
c(3)=23
a(3)=3
b(3)=13
c(3)=23
!$omp parallel private(a,b,c)
a(3)=3
b(3)=13
c(3)=23
a(3)=3
b(3)=13
c(3)=23
if (a(3)/=3)print *,101
if (b(3)/=13)print *,203
if (c(3)/=23)print *,303
!$omp end parallel
if (a(3)/=3)print *,401
if (b(3)/=13)print *,402
if (c(3)/=23)print *,403
if (a(3)/=3)print *,501
if (b(3)/=13)print *,502
if (c(3)/=23)print *,503
end  subroutine
call s
print *,'pass'
end
