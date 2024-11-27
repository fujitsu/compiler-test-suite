double precision dval
character*80 form, out
dval = 14.6
form = '(i8)'
write(Out, fmt=form,err=501)dval
print*,out
print *,'Error'
stop
501  continue
print*,'pass'
end
