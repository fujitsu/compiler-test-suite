call  s1
call  s2
print *,'pass'
contains
subroutine s1
real,allocatable::aaa(:)
integer,allocatable::bbb
allocate(aaa(1),bbb)
associate(zzz1=>aaa)
associate(zzz2=>bbb)
zzz2=1
end associate
zzz1=[1.0]
end associate
end subroutine s1
subroutine s2
real,allocatable::aaa(:)
integer,allocatable::bbb
allocate(aaa(1),bbb)
associate(zzz=>aaa)
associate(zzz=>bbb)
zzz=1
end associate
zzz=[1.0]
end associate
end subroutine s2
end
