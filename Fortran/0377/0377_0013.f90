type ty_int
 integer      :: ti  = 1
end type
type ty_real
 real         :: tr  = 1.0
end type
type ty_comp
 complex      :: tc  = (1.0, 1.0)
end type
type ty_log
 logical      :: tl  = .false.
end type
type ty_cha
 character    :: tc  = '1'
end type
type ty_cha6
 character(6) :: tc  = '111111'
end type

type ty1
 integer       :: t1i  = 1
 type(ty_int)  :: t1t  = ty_int(1)
end type
type,extends(ty1)  :: ty2
 real          :: t2r  = 2.0
 type(ty_real) :: t2t  = ty_real(2.0)
end type
type,extends(ty2)  :: ty3
 complex       :: t3c  = (3.0,3.0)
 type(ty_comp) :: t3t  = ty_comp((3.0, 3.0))
end type
type,extends(ty3)  :: ty4
 logical       :: t4l  = .true.
 type(ty_log)  :: t4t  = ty_log(.false.)
end type
type,extends(ty4)  :: ty5
 character     :: t5c  = '5'
 type(ty_cha)  :: t5t  = ty_cha('1')
end type
type,extends(ty5)  :: ty6
 character(6)  :: t6c  = '666666'
 type(ty_cha6) :: t6t  = ty_cha6('111111')
end type
type,extends(ty6)  :: ty7
 type(ty_int)  :: t7t  = ty_int(1)
end type
type,extends(ty7)  :: ty8
 type(ty_real) :: t8t  = ty_real(1.0)
end type
type,extends(ty8)  :: ty9
 type(ty_comp) :: t9t  = ty_comp((1.0, 1.0))
end type
type,extends(ty9)  :: ty10
 type(ty_log)  :: t10t = ty_log(.false.)
end type
type,extends(ty10) :: ty11
 type(ty_cha)  :: t11t = ty_cha('1')
end type
type,extends(ty11) :: ty12
 type(ty_cha6) :: t12t = ty_cha6('111111')
end type

type (ty12) :: tt12

tt12 = ty12(t1t = ty_int(1), t2t = ty_real(2.0), t3t = ty_comp((3.0, 3.0)), t4t  = ty_log(.true.), t5t  = ty_cha('5 '), t6t  = ty_cha6('666666'))

if (tt12%t1t%ti.ne.  tt12%t1i) print *,'error'
if (tt12%t2t%tr.ne.  tt12%t2r) print *,'error'
if (tt12%t3t%tc.ne.  tt12%t3c) print *,'error'
if (tt12%t4t%tl.neqv.tt12%t4l) print *,'error'
if (tt12%t5t%tc.ne.  tt12%t5c) print *,'error'
if (tt12%t6t%tc.ne.  tt12%t6c) print *,'error'

tt12 = ty12(t5t  = ty_cha('5 '), t1t = ty_int(1), t4t  = ty_log(.true.), t6t  = ty_cha6('666666') , t2t = ty_real(2.0), t3t = ty_comp((3.0, 3.0)))

if (tt12%t1t%ti.ne.  tt12%t1i) print *,'error'
if (tt12%t2t%tr.ne.  tt12%t2r) print *,'error'
if (tt12%t3t%tc.ne.  tt12%t3c) print *,'error'
if (tt12%t4t%tl.neqv.tt12%t4l) print *,'error'
if (tt12%t5t%tc.ne.  tt12%t5c) print *,'error'
if (tt12%t6t%tc.ne.  tt12%t6c) print *,'error'

tt12 = ty12(t7t = ty_int(7), t8t = ty_real(8.0), t9t = ty_comp((9.0, 9.0)), t10t = ty_log(.true.), t11t = ty_cha('11'), t12t = ty_cha6('121212'))

if (tt12%t7t%ti .ne.  7         ) print *,'error'
if (tt12%t8t%tr .ne.  8.0       ) print *,'error'
if (tt12%t9t%tc .ne.  (9.0, 9.0)) print *,'error'
if (tt12%t10t%tl.neqv..true.    ) print *,'error'
if (tt12%t11t%tc.ne.  '1'       ) print *,'error'
if (tt12%t12t%tc.ne.  '121212'  ) print *,'error'

print *,'pass'

end
