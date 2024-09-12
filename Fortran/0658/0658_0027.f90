call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
parameter (N=1000000)
real *8 one,two,three,four,five,six,seven,eight
real *8 a(N),b(N)
parameter (one=1.0)
parameter (two=2.0)
parameter (three=3.0)
parameter (four=4.0)
parameter (five=5.0)
parameter (six=6.0)
parameter (seven=7.0)
parameter (eight=8.0)
a=2.0
do  i=1,N
b(i)=a(i)**one+a(i)**two+a(i)**three+a(i)**four+a(i)**five+a(i)**six &
+a(i)**seven+a(i)**eight
enddo
if(b(1).ne.b(N)) print *,'err'
end subroutine
subroutine bbbbb
parameter (N=1000000)
real *8 one,two,three,four,five,six,seven,eight
real *8 a(N),b(N)
parameter (one=1.0)
parameter (two=2.0)
parameter (three=3.0)
parameter (four=4.0)
parameter (five=5.0)
parameter (six=6.0)
parameter (seven=7.0)
parameter (eight=8.0)
a=2.0
b=a**one+a**two+a**three+a**four+a**five+a**six &
+a**seven+a**eight
if(b(1).ne.b(N)) print *,'err'
end subroutine
end
