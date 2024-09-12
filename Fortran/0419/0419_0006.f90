call s1
call s2
call s3
print *,"pass"
end
subroutine s1
character(10),allocatable::c
c="1"
c="12"
c="123"
c="1234"
c="12345"
c="123456"
c="1234567"
c="12345678"
c="123456789"
c="1234567890"
c="12345678901"
if(c/="1234567890") print *,'err'
end
subroutine s2
character(10),allocatable::c
allocate(c)
c="1"
c="12"
c="123"
c="1234"
c="12345"
c="123456"
c="1234567"
c="12345678"
c="123456789"
c="1234567890"
c="12345678901"
if(c/="1234567890") print *,'err'
end
subroutine s3
character(*),allocatable::c*10
c="1"
c="12"
c="123"
c="1234"
c="12345"
c="123456"
c="1234567"
c="12345678"
c="123456789"
c="1234567890"
c="12345678901"
if(c/="1234567890") print *,'err'
end
