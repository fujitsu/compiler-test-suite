 module mod
       type pp
          integer :: xx
       end type
       type ty0
       end type
       type  ty1
        integer :: a= 1
      end type
      type, extends(ty1) :: ty2
       integer:: b = 1
       integer :: c = 2
       integer :: d(3)= 10
       type(pp) :: py = pp(19)
      end type
      type, extends(ty2) ::ty3
       integer :: z = 10
      end type
    end
    use mod, tt=>ty2, tp=>ty1
     integer , parameter ::x = 2
      type (ty3) :: t21=  ty3(ty2 = (tt(x)))
      type (ty3) :: t22=  ty3(ty1 = (tp(x)))
      type (ty3) :: t23,t24
       write(15,*) t21
       write(15,*) t22
      i = 2
     t23= ty3(ty2 = (tt(i)))
     t24= ty3(ty1 = (tp(i)))
       write(15,*) t23
       write(15,*) t24
call chk
      print *, 'pass'
     end

subroutine chk
integer k(8)
rewind 15
read(15,*) k
if (any(k/=[2,1,2,10,10,10,19,10]))print *,101,k
read(15,*) k
if (any(k/=[2,1,2,10,10,10,19,10]))print *,102,k
read(15,*) k
if (any(k/=[2,1,2,10,10,10,19,10]))print *,103,k
read(15,*) k
if (any(k/=[2,1,2,10,10,10,19,10]))print *,104,k
end
