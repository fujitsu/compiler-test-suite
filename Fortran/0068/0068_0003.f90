logical function equal_check_with_margin(a,b)
  real(8) :: a,b
  equal_check_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-4)
end function equal_check_with_margin

subroutine sub(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
complex*16 a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z

a = a + (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z) * (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z)
a = a - (- b - c - d - e - f - g - h - i - j - k - l - m - n - o - p - q - r - s - t - u - v - w - x - y - z) * (- b - c - d - e - f - g - h - i - j - k - l - m - n - o - p - q - r - s - t - u - v - w - x - y - z)
a = a + (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z) * (- b - c - d - e - f - g - h - i - j - k - l - m - n - o - p - q - r - s - t - u - v - w - x - y - z) 
a = a * ((b - c + d - e + f - g + h - i + j - k + l - m + n - o + p - q + r - s + t - u + v - w + x - y + z) / (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z))
end subroutine

program main
complex*16 a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
real(8) ir,iq
real(8) :: ir_ans = 1150
real(8) :: iq_ans = -200
logical :: equal_check_with_margin

a=(0.001_8,0.002_8)
b=a
c=a
d=a
e=a
f=a
g=a
h=a
i=a
j=a
k=a
l=a
m=a
n=a
o=a
p=a
q=a
r=a
s=a
t=a
u=a
v=a
w=a
x=a
y=a
z=a
call sub(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
ir = real(a)*10000000
iq = imag(a)*10000000

if (equal_check_with_margin(ir, ir_ans) .or. equal_check_with_margin(iq, iq_ans)) then
  print *,"ng"
else
  print *,"ok"
endif

end program
