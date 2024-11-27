character(*)::iii
dimension::iii(huge(1):*)
parameter(iii=[repeat("1",6500),"2",repeat("3",65001)])
print *,len(iii)

end
