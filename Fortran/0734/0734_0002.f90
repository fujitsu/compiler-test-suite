program main
 call test01()
 call test02()
 call test03()
 call test04()
 call test05()
 call test06()
 call test07()
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
 real, dimension(:), pointer :: a,b
 integer i,count1,count2,rate,n
 n = 100000
 allocate (a(n),b(n))
 a = (/(i,i=1,100000) /)
 b = (/(i,i=1,100000) /)
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
 type ty1
 real, dimension(:), pointer :: a,b
 end type
 type (ty1) :: str
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str%a(n),str%b(n))
 str%a = (/(i,i=1,100000) /)
 str%b = (/(i,i=1,100000) /)
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
 type ty1
 real, dimension(:), pointer :: a,b
 end type
 type (ty1) :: str(10)
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str(1)%a(n),str(1)%b(n))
 str(1)%a = (/(i,i=1,100000) /)
 str(1)%b = (/(i,i=1,100000) /)
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
 type ty1
 real, dimension(:), pointer :: a,b
 end type
 type (ty1) :: str
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str%a(n),str%b(n))
 str%a = (/(i,i=1,100000) /)
 str%b = (/(i,i=1,100000) /)
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
  real,dimension(:) :: a,b
  a=b
  end subroutine
end 

subroutine test05()
 use mod1
 type ty1
 real, dimension(:), pointer :: a,b
 end type
 type (ty1) :: str
 integer i,count1,count2,rate,n
 n = 100000
 allocate (str%a(n),str%b(n))
 str%a = (/(i,i=1,100000) /)
 str%b = (/(i,i=1,100000) /)
 call sss(str%a(1:n),str%b(1:n))
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
  real,dimension(:) :: a,b
  a=b
  end subroutine
end 

subroutine test06()
 use mod1
 real, dimension(:), pointer :: a,b
 integer i,count1,count2,rate,n
 n = 100000
 allocate (a(n),b(n))
 a = (/(i,i=1,100000) /)
 b = (/(i,i=1,100000) /)
 call sss(a(1:n),b(1:n))
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
  real,dimension(:) :: a,b
  a=b
  end subroutine
end 

subroutine test07()
 use mod1
 real, dimension(:), pointer :: a,b
 integer i,count1,count2,rate,n
 n = 100000
 allocate (a(n),b(n))
 a = (/(i,i=1,100000) /)
 b = (/(i,i=1,100000) /)
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
  real,dimension(:) :: a,b
  a=b
  end subroutine
end 
