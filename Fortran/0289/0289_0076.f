         type x
            integer*4 a1,a2,a3,a4,a5,a6,a7,a8
         end type
         type xx
           integer a
           type (x)::b
         end type
         type (xx) x1
         type (x)  x2
         x1%b%a1=1
         x1%b%a2=2
         x1%b%a3=3
         x1%b%a4=4
         x1%b%a5=5
         x1%b%a6=6
         x1%b%a7=7
         x1%b%a8=8
         print *,x1%b
         x2=x1%b
         print *,x2
         end
