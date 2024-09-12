block data
     common /abc/ p1,p2
     common /def/ t1,t2
     integer,target::t1
     integer,target::t2
     integer,pointer::p1
     integer,pointer::p2
     data t1 /5/
     data t2 /6/
     data p1 /t1/
     data p2 /t2/
  end block data

  common /abc/ p1,p2
  common /def/ t1,t2
  integer,target::t1
  integer,target::t2
  integer,pointer::p1
  integer,pointer::p2

  if (t1/=5) print *,101
  if (t2/=6) print *,102
  if (p1/=5) print *,111
  if (p2/=6) print *,122
print *,'pass'
end program
