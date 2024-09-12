       real a(1000),b(1000),c(1000),d(1000)
       data a/1000*1.0/
       data b/1000*2.0/
       data c/1000*3.0/
       data d/1000*4.0/
       ia=500
       i = ia +
# 12 "cc1.cpp"
#           13 "cc2.cpp"
     1 ia
       do j=1,1000
         a(j) = b(j) +
# 17 "cc3.cpp"
     1     c(j) +
# 18 "cc4.cpp"
     1           d(j)
       end do
       print *,'pass'
       end
