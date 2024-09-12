character(*),dimension(1),parameter::c=transfer( [ character(1)::''], &
 [" "])
if (kind(c)/=1) print *,kind(c)
if (len (c)/=1) print *,len (c)
print *,'pass'
end
