type ty
character(len=:),allocatable :: ch(:)
end type

type(ty),allocatable :: obj(:)

allocate(obj(2))
allocate(character(len=5)::obj(1)%ch(2))
allocate(character(len=5)::obj(2)%ch(2))

obj(1)%ch = "AAAAA"
obj(2)%ch = "11111"

a1:associate(a=>obj(1))
 a2: associate(c=>obj(2))
  c%ch = "aaaaa"
  exit a1
 end associate a2

 a%ch = "11111"
 obj(2)%ch = "BBBBB"
 goto 100
end associate a1

100 if(all(obj(1)%ch /= "AAAAA")) print*, 101

if(all(obj(2)%ch /= "aaaaa")) print*, 102
print*,"PASS"
end
