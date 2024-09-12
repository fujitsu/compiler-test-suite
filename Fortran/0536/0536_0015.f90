class(*),pointer:: a1,a2,a3,a4,a5,a0
character(5),target::ch
ch="12345"
i=1
j=5
a0=>ch(i:j)
a1=>ch(1:j)
a2=>ch(i:5)
a3=>ch(i:)
a4=>ch(:j)
a5=>ch(i:5)
select type(a0) 
type is(character(*))
if(len(a0)/=5) print *,'err1'
if(a0//"a"/="12345"//"a") print *,'err2'
class default
print *,'ng'
end select
select type(a1) 
type is(character(*))
if(len(a1)/=5) print *,'err1'
if(a1//"a"/="12345"//"a") print *,'err2'
class default
print *,'ng'
end select
select type(a2) 
type is(character(*))
if(len(a2)/=5) print *,'err1'
if(a2//"a"/="12345"//"a") print *,'err2'
class default
print *,'ng'
end select
select type(a3) 
type is(character(*))
if(len(a3)/=5) print *,'err1'
if(a3//"a"/="12345"//"a") print *,'err2'
class default
print *,'ng'
end select
select type(a4) 
type is(character(*))
if(len(a4)/=5) print *,'err1'
if(a4//"a"/="12345"//"a") print *,'err2'
select type(a5) 
type is(character(*))
if(len(a5)/=5) print *,'err1'
if(a5//"a"/="12345"//"a") print *,'err2'
end select
class default
print *,'ng'
end select
print *,'pass'
end


