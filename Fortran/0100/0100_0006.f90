complex(kind=2),parameter::c2_4=(10_1,3.5_2)
complex(kind=2),parameter::c2_5=(20_2,3.5_2)
complex(kind=2),parameter::c2_6=(30_4,3.5_2)
complex(kind=2),parameter::c2_7=(40_8,3.5_2)
complex(kind=2),parameter::c2_8=(655.5,3.5_2)
complex(kind=2),parameter::c2_9=(655.5_4,3.5_2)
complex(kind=2),parameter::c2_10=(655.5_8,3.5_2)
complex(kind=2),parameter::c2_11=(655.5_2,3.5_2)

complex::res
res=c2_4
if(res/= (10.0,3.5))print*,"101"
res=c2_5
if(res/= (20.0,3.5))print*,"102"
res=c2_6
if(res/= (30.0,3.5))print*,"103"
res=c2_7
if(res/= (40.0,3.5))print*,"104"
res=c2_8
if(res/= (655.5,3.5))print*,"105"
res=c2_9
if(res/= (655.5,3.5))print*,"106"
res=c2_10
if(res/= (655.5,3.5))print*,"107"
res=c2_11
if(res/= (655.5,3.5))print*,"108"

end
