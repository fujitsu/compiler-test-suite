intrinsic move_alloc

call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
call sub7()
call sub8()
call sub9()
call sub10()
call sub11()
call sub12()
call sub13()
call sub14()
call sub15()
call sub16()
call sub17()
call sub18()

print *,'pass'

end

subroutine sub1()

 real,allocatable :: rto(:),rfrom(:)

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))

 rto=1.0
 rfrom=2.0
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.2.0) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub2()

 real(kind=8),allocatable :: rto(:),rfrom(:)
 real(kind=8)::r1=2.0

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=1.0
 rfrom=r1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.r1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub3()

 real(kind=16),allocatable :: rto(:),rfrom(:)
 real(kind=16)::r1=3.0

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=1.0
 rfrom=r1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.r1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub4()

 logical,allocatable :: rto(:),rfrom(:)
 logical::l1=.false.

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=.true.
 rfrom=l1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).neqv.l1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub5()

 logical(kind=1),allocatable :: rto(:),rfrom(:)
 logical(kind=1)::l1=.false.

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=.true.
 rfrom=l1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).neqv.l1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub6()

 logical(kind=2),allocatable :: rto(:),rfrom(:)
 logical(kind=2)::l1=.false.

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=.true.
 rfrom=l1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).neqv.l1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub7()

 logical(kind=8),allocatable :: rto(:),rfrom(:)
 logical(kind=8)::l1=.false.

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=.true.
 rfrom=l1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).neqv.l1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub8()

 integer,allocatable :: rto(:),rfrom(:)
 integer::i1=3

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=1
 rfrom=i1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.i1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub9()

 integer(kind=1),allocatable :: rto(:),rfrom(:)
 integer(kind=1)::i1=25

 allocate(rto(-1:2))
 allocate(rfrom(-2*1:2*1))
 rto=1
 rfrom=i1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.i1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub10()

 integer(kind=2),allocatable :: rto(:),rfrom(:)
 integer(kind=2)::i1=25

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=1
 rfrom=i1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.i1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub11()

 integer(kind=8),allocatable :: rto(:),rfrom(:)
 integer(kind=8)::i1=25

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=1
 rfrom=i1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.i1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub12()

 character(kind=1),allocatable :: rto(:),rfrom(:)
 character(kind=1)::c1='q'

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto='1'
 rfrom=c1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.c1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub13()

 character,allocatable :: rto(:),rfrom(:)
 character::c1='q'

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto='1'
 rfrom=c1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.c1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub14()

 character(len=4),allocatable :: rto(:),rfrom(:)
 character(len=4)::c1='abcd'

 allocate(rto(-1:2))
 allocate(rfrom(-2*1:2*1))
 rto='1234'
 rfrom=c1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.c1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub15()

 complex,allocatable :: rto(:),rfrom(:)
 complex::c1=(3.0,4.0)

 allocate(rto(-1:2))
 allocate(rfrom(-2*1:2*1))
 rto=(1,2)
 rfrom=c1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.c1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub16()

 complex(kind=8),allocatable :: rto(:),rfrom(:)
 complex(kind=8)::c1=(3.0,4.0)

 allocate(rto(-1:2))
 allocate(rfrom(-2*1:2*1))
 rto=(1,2)
 rfrom=c1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.c1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub17()

 complex(kind=16),allocatable :: rto(:),rfrom(:)
 complex(kind=16)::c1=(3.0,4.0)

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=(1,2)
 rfrom=c1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1).ne.c1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
subroutine sub18()

 type ty1
  integer(kind=4) :: i1=1
  real(kind=4):: r1=2.0
  character(kind=1,len=4):: ch1='3333'
  logical(kind=4):: l1=.true.
  complex(kind=4):: cm1=(4.0,5.0)
 end type
 type(ty1),allocatable :: rto(:),rfrom(:)
 type(ty1)::t1=ty1(2,4.0,'6666',.false.,(8.0,10.0))

 allocate(rto(-1:2))
 allocate(rfrom(-2:2))
 rto=ty1(1,2.0,'3333',.true.,(4.0,5.0))
 rfrom=t1
 call move_alloc(to=rto,from=rfrom)

 if (rto(1)%i1.ne.t1%i1) write(6,*) "NG"
 if (rto(1)%r1.ne.t1%r1) write(6,*) "NG"
 if (rto(1)%ch1.ne.t1%ch1) write(6,*) "NG"
 if (rto(1)%l1.neqv.t1%l1) write(6,*) "NG"
 if (rto(1)%cm1.ne.t1%cm1) write(6,*) "NG"
 if (allocated(rfrom).neqv..false.) write(6,*) "NG"

end subroutine
