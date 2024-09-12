character(len=4),pointer :: cha(:)
allocate(cha(3))
cha = (/'abc','def','ghi'/)
write(1,*)cha,':',loc(cha)
write(1,*)cha(1),':',loc(cha(1))
write(1,*)cha(2),':',loc(cha(2))
write(1,*)cha(3),':',loc(cha(3))
print *,'pass'
end
