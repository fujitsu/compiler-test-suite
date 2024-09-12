class(*),allocatable::typ1(:)
allocate(typ1(1),mold=[1])
name:select type(zzz=>typ1)
class default name
typ1=zzz
associate (zzz=>typ1)
typ1=zzz
end associate
select type(zzz=>typ1)
class default
typ1=zzz
end select
end select name
print *,'pass'
end
