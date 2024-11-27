program main
 call test01()
 call test02()
 call test03()
 call test04()
 call test05()
 call test06()
 call test07()
 call test08()
 call test09()
 call test10()
 call test11()
 call test12()
 print *,'pass'
end 

subroutine copy77(a,b,i,j)
 real, dimension(*) :: a,b
 integer i,j
 a(i:i+4) = b(j-4:j)
end subroutine
module mod1
contains
subroutine copy90(a,b,i,j)
 real, dimension(:) :: a,b
 integer i,j
 a(i:i+4) = b(j-4:j)
end subroutine 
end module

subroutine test01()
 use mod1
 real, dimension(:), pointer :: aa,bb
 real, dimension(:), pointer :: a,b
 integer i,count1,count2,rate,n
 n = 100000
 allocate (aa(n),bb(n))
 aa = (/(i,i=1,100000) /)
 bb = (/(i,i=1,100000) /)
 a=>aa
 b=>bb
 call system_clock(count1,rate)
 call copy77(a,b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(a,b,5,100000)
 call system_clock(count2,rate)
 if (a(5).ne.100000-4) write(6,*) "NG" 
end 

subroutine test02()
 use mod1
 real, dimension(:), pointer :: aa,bb
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str
 integer i,count1,count2,rate,n
 n = 100000
 allocate (aa(n),bb(n))
 aa = (/(i,i=1,100000) /)
 bb = (/(i,i=1,100000) /)
 str%a=>aa
 str%b=>bb
 call system_clock(count1,rate)
 call copy77(str%a,str%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str%a,str%b,5,100000)
 call system_clock(count2,rate)
 if (str%a(5).ne.100000-4) write(6,*) "NG" 
end 

subroutine test03()
 use mod1
 real, dimension(:), pointer :: aa,bb
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str(1)
 integer i,count1,count2,rate,n
 n = 100000
 allocate (aa(n),bb(n))
 aa = (/(i,i=1,100000) /)
 bb = (/(i,i=1,100000) /)
 str(1)%a=>aa
 str(1)%b=>bb
 call system_clock(count1,rate)
 call copy77(str(1)%a,str(1)%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str(1)%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str(1)%a,str(1)%b,5,100000)
 call system_clock(count2,rate)
 if (str(1)%a(5).ne.100000-4) write(6,*) "NG" 
end 

subroutine test04()
 use mod1
 real, dimension(:), pointer :: aa,bb
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1),pointer :: str
 type (ty1),target  :: ttt
 integer i,count1,count2,rate,n
 n = 100000
 str=>ttt
 allocate (aa(n),bb(n))
 aa = (/(i,i=1,100000) /)
 bb = (/(i,i=1,100000) /)
 str%a=>aa
 str%b=>bb
 call system_clock(count1,rate)
 call copy77(str%a,str%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str%a,str%b,5,100000)
 call system_clock(count2,rate)
 if (str%a(5).ne.100000-4) write(6,*) "NG" 
end 

subroutine test05()
 use mod1
 type ty2
 sequence
 real, dimension(:), pointer :: aa,bb
 end type
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1),dimension(:),pointer :: str
 type (ty1) ,dimension(1),target :: ttt
 integer i,count1,count2,rate,n
 n = 100000
 allocate (ttt(1)%a(n),ttt(1)%b(n))
 ttt(1)%a = (/(i,i=1,100000) /)
 ttt(1)%b = (/(i,i=1,100000) /)
 str=>ttt
 call system_clock(count1,rate)
 call copy77(str(1)%a,str(1)%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str(1)%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str(1)%a,str(1)%b,5,100000)
 call system_clock(count2,rate)
 if (str(1)%a(5).ne.100000-4) write(6,*) "NG" 
end 

subroutine test06()
 use mod1
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str%a(n),str%b(n))
 str%a = 1
 str%b = 1000
 call sss(str%a,str%b)
 call system_clock(count1,rate)
 call copy77(str%a,str%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str%a,str%b,5,100000)
 call system_clock(count2,rate)
 if (str%a(5).ne.100000-4) write(6,*) "NG" 
 contains
 subroutine sss(a,b)
 real, dimension(:), pointer :: a,b
 a = (/(i,i=1,100000) /)
 b = (/(i,i=1,100000) /)
 end subroutine
end 

subroutine test07()
 use mod1
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str%a(n),str%b(n))
 str%a = 1
 str%b = 1000
 call sss(str)
 call system_clock(count1,rate)
 call copy77(str%a,str%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str%a,str%b,5,100000)
 call system_clock(count2,rate)
 if (str%a(5).ne.100000-4) write(6,*) "NG" 
 contains
 subroutine sss(str)
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str
 str%a = (/(i,i=1,100000) /)
 str%b = (/(i,i=1,100000) /)
 end subroutine
end 

subroutine test08()
 use mod1
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str(10)
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str(1)%a(n),str(1)%b(n))
 str(1)%a = 1
 str(1)%b = 1000
 call sss(str(1))
 call system_clock(count1,rate)
 call copy77(str(1)%a,str(1)%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str(1)%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str(1)%a,str(1)%b,5,100000)
 call system_clock(count2,rate)
 if (str(1)%a(5).ne.100000-4) write(6,*) "NG" 
 contains
 subroutine sss(str)
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str(1)
 str(1)%a = (/(i,i=1,100000) /)
 str(1)%b = (/(i,i=1,100000) /)
 end subroutine
end 

subroutine test09()
 use mod1
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str(10)
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str(1)%a(n),str(1)%b(n))
 str(1)%a = 1
 str(1)%b = 1000
 call sss(str(1:10))
 call system_clock(count1,rate)
 call copy77(str(1)%a,str(1)%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str(1)%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str(1)%a,str(1)%b,5,100000)
 call system_clock(count2,rate)
 if (str(1)%a(5).ne.100000-4) write(6,*) "NG" 
 contains
 subroutine sss(str)
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str(10)
 str(1)%a = (/(i,i=1,100000) /)
 str(1)%b = (/(i,i=1,100000) /)
 end subroutine
end 

subroutine test10()
 use mod1
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type ty2
 sequence
 type (ty1) :: rrr(10)
 end type 
 type (ty2) :: str(10)
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str(1)%rrr(1)%a(n),str(1)%rrr(1)%b(n))
 str(1)%rrr(1)%a = 1
 str(1)%rrr(1)%b = 1000
 call sss(str(1)%rrr(1))
 call system_clock(count1,rate)
 call copy77(str(1)%rrr(1)%a,str(1)%rrr(1)%b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (str(1)%rrr(1)%a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(str(1)%rrr(1)%a,str(1)%rrr(1)%b,5,100000)
 call system_clock(count2,rate)
 if (str(1)%rrr(1)%a(5).ne.100000-4) write(6,*) "NG" 
 contains
 subroutine sss(str)
 type ty1
 sequence
 real, dimension(:), pointer :: a,b
 end type 
 type (ty1) :: str(10)
 str(1)%a = (/(i,i=1,100000) /)
 str(1)%b = (/(i,i=1,100000) /)
 end subroutine
end 

subroutine test11()
 use mod1
 real, dimension(:), pointer :: a,b
 integer i,count1,count2,rate,n
 n = 100000
 allocate (a(n),b(n))
 a = 1
 b = 1000
 call sss(a,b)
 call system_clock(count1,rate)
 call copy77(a,b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(a,b,5,100000)
 call system_clock(count2,rate)
 if (a(5).ne.100000-4) write(6,*) "NG" 
 contains
 subroutine sss(a,b)
 real, dimension(:), pointer :: a,b
 a = (/(i,i=1,100000) /)
 b = (/(i,i=1,100000) /)
 end subroutine
end 

subroutine test12()
 use mod1
 real, dimension(:), pointer :: a,b
 integer i,count1,count2,rate,n
 n = 100000
 allocate (a(n),b(n))
 a = (/(i,i=1,100000) /)
 b = (/(i,i=1,100000) /)
 call sss(a(1:10),b(1:10))
 call system_clock(count1,rate)
 call copy77(a,b,1,10)
 call system_clock(count2,rate)
 ans = (count2-count1)/real(rate)
 if (a(5).ne.10) write(6,*) "NG" 

 call system_clock(count1,rate)
 call copy90(a,b,5,100000)
 call system_clock(count2,rate)
 if (a(5).ne.100000-4) write(6,*) "NG" 
 contains
 subroutine sss(a,b)
 real, dimension(:) :: a,b
 j=a(1)
 j=b(1)
 end subroutine
end 
