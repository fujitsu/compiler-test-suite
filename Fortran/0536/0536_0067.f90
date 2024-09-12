class(*),allocatable::a(:),b
type t
character(3)::cc
end type
a=[t("123"(2:))]
b=t("123"(2:))
select type(a)
type is (character(*))
if(len(a)/=2) print *,'err1',len(a)
if(a(1)/="23") print *,'err2'
end select
select type(b)
type is (character(*))
if(len(b)/=2) print *,'err3'
if(b/="23") print *,'err4'
end select
print *,'pass'
end
