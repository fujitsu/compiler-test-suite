block
integer,target,save :: ta
type ty1
 integer,pointer ::ip=>ta
end type
type (ty1),pointer :: str
ta=1
allocate (str)
if (str%ip.ne.1 ) print *,'err'
end block
block
integer,target,save :: ta
type ty1
 integer,pointer ::ip=>ta
end type
type (ty1),pointer :: str
ta=1
allocate (str)
if (str%ip.ne.1 ) print *,'err'
block
integer,target,save :: ta
type ty1
 integer,pointer ::ip=>ta
end type
type (ty1),pointer :: str
ta=1
allocate (str)
if (str%ip.ne.1 ) print *,'err'
end block
end block
print *,'pass'
end
