  character(kind=1,len=3),target :: s1 = 1_'abc'
  character(kind=1,len=:),pointer :: ps1 => s1(:-1)
 if (ps1.ne.1_'') print *,'err'
 if (len(ps1).ne.0) print *,'err'
print *,'pass'
end
