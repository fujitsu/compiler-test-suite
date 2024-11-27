character ::a(3)=(/'1','2','3'/),b(2)
read(a(1:3:2),'(a)') b
if (any(b/=(/'1','3'/)))print *,'error-1'
print *,'pass'
end
