 module mod
      type  ty1
        integer :: a= 1
      end type
      type, extends(ty1) ::ty2
       integer :: z = 10
      end type
    end
    use mod, w2=>ty2, w1=>ty1
     type (w2) :: v21= w2(ty1 = w1(2), z=11)
     type (w2) :: v22
     k=2
     v22= w2(ty1 = w1(k),z=11)

write(17,*)v21
write(17,*)v22
call chk
print *,'pass'
     end
subroutine chk
integer k(2)
rewind 17
read(17,*) k
if (any(k/=[2,11]))print *,101,k
read(17,*) k
if (any(k/=[2,11]))print *,101,k
end
