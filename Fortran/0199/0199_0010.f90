integer,target::t2(5) 
type z
 integer,pointer::za3(:)=>t2(1:3:2)
 integer,pointer::zb3(:)=>t2(1:5:1)
 integer,pointer::zc3(:)=>t2(1:5:2)
 integer,pointer::zd3(:)=>t2
end type
 type (z) ::b
 type (z),allocatable ::bx
t2=(/1,2,3,4,5/)
allocate(bx)
if (bx%za3(1).ne.1) print *,'err'
if (bx%za3(2).ne.3) print *,'err'
if (bx%zb3(1).ne.1) print *,'err'
if (bx%zb3(2).ne.2) print *,'err'
if (bx%zb3(3).ne.3) print *,'err'
if (bx%zb3(4).ne.4) print *,'err'
if (bx%zb3(5).ne.5) print *,'err'
if (bx%zc3(1).ne.1) print *,'err'
if (bx%zc3(2).ne.3) print *,'err'
if (bx%zc3(3).ne.5) print *,'err'
if (bx%zd3(1).ne.1) print *,'err'
if (bx%zd3(2).ne.2) print *,'err'
if (bx%zd3(3).ne.3) print *,'err'
if (bx%zd3(4).ne.4) print *,'err'
if (bx%zd3(5).ne.5) print *,'err'
if (b%za3(1).ne.1) print *,'err'
if (b%za3(2).ne.3) print *,'err'
if (b%zb3(1).ne.1) print *,'err'
if (b%zb3(2).ne.2) print *,'err'
if (b%zb3(3).ne.3) print *,'err'
if (b%zb3(4).ne.4) print *,'err'
if (b%zb3(5).ne.5) print *,'err'
if (b%zc3(1).ne.1) print *,'err'
if (b%zc3(2).ne.3) print *,'err'
if (b%zc3(3).ne.5) print *,'err'
if (b%zd3(1).ne.1) print *,'err'
if (b%zd3(2).ne.2) print *,'err'
if (b%zd3(3).ne.3) print *,'err'
if (b%zd3(4).ne.4) print *,'err'
if (b%zd3(5).ne.5) print *,'err'
print *,'pass'
end
