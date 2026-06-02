subroutine s1
character(len=:),pointer:: p1
character(len=:),pointer:: p2(:)
character(len=:),allocatable :: p3
character(len=:),allocatable :: p4(:)
allocate(character(10)::p1,p2(5),p3,p4(5))
p1 = "12345"
p2 = (/"12345","12345","12345","12345","12345"/)
p3 = "12345"
p4 = (/"12345","12345","12345","12345","12345"/)
if (p1 .ne. "12345") print *,'fail'
if (all(p2/=(/"12345","12345","12345","12345","12345"/))) print *,'fail'
if (p3 .ne. "12345") print *,'fail'
if (all(p4/=(/"12345","12345","12345","12345","12345"/))) print *,'fail'
end
call s1
print *,"pass"
end
