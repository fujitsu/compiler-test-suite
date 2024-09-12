  character(kind=1,len=3),target,save :: s1=1_'12345' 
  character(kind=1,len=:),pointer :: ps1 => s1(5:)
s1 = 1_'abc'
 if (ps1.ne.1_'') print *,'err'
 if (len(ps1).ne.0) print *,'err'
print *,'pass'
end
