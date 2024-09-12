character,parameter :: c='1'
integer,parameter::k= len((/c/))
character(*),parameter::x(1)=[character(len( (/c/) )) :: '2' ]
if (x(1)/='2')print *,x(1)
if (len(x)/=1)print *,len(x)
if (k     /=1)print *,k
print *,'pass'
end 
