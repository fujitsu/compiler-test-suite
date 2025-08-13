type ty1
 integer :: i
end type
i=10
write(12,*) [character(i)::]
write(12,*) [character(1)::]
write(12,*) [character(int(1))::]
write(12,*) [character(65000)::]
write(12,*) [integer  (kind = 1 )::]
write(12,*) [integer  (kind = 2 )::]
write(12,*) [integer  (kind = 4 )::]
write(12,*) [integer  (kind = 8 )::]
write(12,*) [logical  (kind = 1 )::]
write(12,*) [logical  (kind = 2 )::]
write(12,*) [logical  (kind = 4 )::]
write(12,*) [logical  (kind = 8 )::]
write(12,*) [real     (kind = 4 )::]
write(12,*) [real     (kind = 8 )::]
write(12,*) [real     (kind = 16)::]
write(12,*) [complex  (kind = 4 )::]
write(12,*) [complex  (kind = 8 )::]
write(12,*) [complex  (kind = 16)::]
write(12,*) [ty1           ::]
print *,"pass"
end
