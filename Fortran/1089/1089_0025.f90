n=2
associate(r=>n)
block
integer :: a01(len ([character*(r):: '1234']))
integer :: a02(len ([character (r):: '1234']))
character (len ([character*(r):: '1234'])):: a03
character (len ([character (r):: '1234'])):: a04
integer,dimension (len ([character*(r):: '1234'])):: a05,a06
integer,dimension (len ([character (r):: '1234'])):: a07,a08
character :: a09*(len ([character*(r):: '1234']))
character :: a10*(len ([character*(r):: '1234']))(3)
character :: a11(3)*(len ([character*(r):: '1234']))
character(12) :: a12*(len ([character*(r):: '1234']))
character(12) :: a13*(len ([character*(r):: '1234']))(3)
character(12) :: a14(3)*(len ([character*(r):: '1234']))
character (len ([character*(r):: '1234'])):: a15*3
character (len ([character (r):: '1234'])):: a16*3
integer,dimension (len ([character*(r):: '1234'])):: a17(3),a18(3)
integer,dimension (len ([character (r):: '1234'])):: a19(3),a20(3)
character,dimension (len ([character*(r):: '1234'])):: a21(3),a22(3)
character,dimension (len ([character (r):: '1234'])):: a23(3),a24(3)
character (len ([character*(r):: '1234'])):: a25*(len ([character*(r):: '1234']))
character (len ([character*(r):: '1234'])):: a26*(len ([character*(r):: '1234']))
character (len ([character (r):: '1234'])):: a27*(len ([character*(r):: '1234']))
character (len ([character*(r):: '1234'])):: a28*(len ([character (r):: '1234']))
character (len ([character (r):: '1234'])):: a29*(len ([character*(r):: '1234']))
character (len ([character (r):: '1234'])):: a30*(len ([character (r):: '1234']))
character (len ([character*(1):: '1234'])):: a31*(len ([character*(r):: '1234']))
character (len ([character*(1):: '1234'])):: a32*(len ([character*(r):: '1234']))
character (len ([character (1):: '1234'])):: a33*(len ([character*(r):: '1234']))
character (len ([character*(1):: '1234'])):: a34*(len ([character (r):: '1234']))
character (len ([character (1):: '1234'])):: a35*(len ([character*(r):: '1234']))
character (len ([character (1):: '1234'])):: a36*(len ([character (r):: '1234']))
if (size(a01)/=2) print *,1001
if (size(a02)/=2) print *,1002
if (len (a03)/=2) print *,1003
if (len (a04)/=2) print *,1004
if (size(a05)/=2) print *,1005
if (size(a06)/=2) print *,1006
if (size(a07)/=2) print *,1007
if (size(a08)/=2) print *,1008
if (len (a09)/=2) print *,1009
if (len (a10)/=2) print *,1011
if (size(a10)/=3) print *,1021
if (len (a11)/=2) print *,1031
if (size(a11)/=3) print *,1041
if (len (a12)/=2) print *,1051
if (len (a13)/=2) print *,1061
if (size(a13)/=3) print *,1071
if (len (a14)/=2) print *,1081
if (size(a14)/=3) print *,1091
if (len (a15)/=3) print *,1101
if (len (a16)/=3) print *,1201
if (size(a17)/=3) print *,1301
if (size(a18)/=3) print *,1401
if (size(a19)/=3) print *,1501
if (size(a20)/=3) print *,1601
if (size(a21)/=3) print *,1701
if (size(a22)/=3) print *,1801
if (size(a23)/=3) print *,1901
if (size(a24)/=3) print *,2001
if (len(a25)/=2) print *,3001
if (len(a26)/=2) print *,4001
if (len(a27)/=2) print *,5001
if (len(a28)/=2) print *,6001
if (len(a29)/=2) print *,7001
if (len(a30)/=2) print *,8001
if (len(a31)/=2) print *,1711
if (len(a32)/=2) print *,1821
if (len(a33)/=2) print *,1931
if (len(a34)/=2) print *,2041
if (len(a35)/=2) print *,3051
if (len(a36)/=2) print *,4061
end block
end associate

print *,'sngg191p : pass'
end

