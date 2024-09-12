module m1
logical(1):: x1,y1
logical(2):: x2,y2
logical(4):: y4
logical(8):: x8,y8
common /r1/y1
common /r2/y2
common /r4/y4
common /r8/y8
bind(c):: x1,x2,x4,x8
bind(c):: /r1/,/r2/,/r4/,/r8/
logical(4)::x4
contains
end
z9=1
print *,'pass'
end
