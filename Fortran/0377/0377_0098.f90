type ty1
 integer :: i
end type
i=10
write(10,*) [character(i)::]
write(10,*) [character(1)::]
write(10,*) [character(int(1))::]
write(10,*) [character(65000)::]
write(10,*) [integer  (kind = 1 )::]
write(10,*) [integer  (kind = 2 )::]
write(10,*) [integer  (kind = 4 )::]
write(10,*) [integer  (kind = 8 )::]
write(10,*) [logical  (kind = 1 )::]
write(10,*) [logical  (kind = 2 )::]
write(10,*) [logical  (kind = 4 )::]
write(10,*) [logical  (kind = 8 )::]
write(10,*) [real     (kind = 4 )::]
write(10,*) [real     (kind = 8 )::]
write(10,*) [real     (kind = 16)::]
write(10,*) [complex  (kind = 4 )::]
write(10,*) [complex  (kind = 8 )::]
write(10,*) [complex  (kind = 16)::]
write(10,*) [ty1           ::]
print *,"pass"
end
