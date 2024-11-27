procedure(iabs), pointer :: piabs
piabs => iabs

if (iabs(a = 1).ne.piabs(a = 1)) print *,'iabs'

end
