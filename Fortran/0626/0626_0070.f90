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
     integer , parameter ::x = 20
     type (ty3) :: t2= ty3(ty1 = (tp(2)))
     type (ty3) :: w2
      w2= ty3(ty1 = (tp(2)))
print *,'pass'
     end
