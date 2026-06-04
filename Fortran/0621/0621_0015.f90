character(:),allocatable :: cha01(:)
character(:),allocatable :: cha02(:,:)
character(:),allocatable :: cha03(:,:)
character(:),allocatable :: cha04(:,:)
character(:),allocatable :: cha05(:,:)
character(:),allocatable :: cha06(:,:)
character(:),allocatable :: cha07(:,:)
character(:),allocatable :: cha08(:,:)
character(:),allocatable :: cha09(:,:)
character(:),allocatable :: cha10(:,:)
character(5),parameter :: cntarr(4)=(/"12345","12345","12345","12345"/)
character(5),parameter :: cntcha="12345"
integer,parameter :: ind=2
allocate(cha01,source=[character(5)::(/"12345","12345","12345","12345"/)])
allocate(cha02,source=reshape([character(5)::(/"12345","12345","12345","12345"/)],[2,2]))
allocate(cha03,source=reshape([cntarr],[2,2]))
allocate(character(5)::cha04(2,2))
cha04 = reshape([cntarr],[2,2])
allocate(cha05,source=reshape([(/"12345","12345","12345","12345"/)],[(/2,2/)]))
allocate(cha06,source=reshape([cntcha,cntcha,cntcha,cntcha],[ind,ind]))
allocate(cha07,source=reshape([[cntcha],[cntcha],[cntcha],[cntcha]],[[ind],[ind]]))
allocate(cha08,source=reshape([[[cntcha],[[cntcha],[cntcha]],[cntcha]]],[[[ind],[ind]]]))
allocate(cha09,source=reshape([("12345",i=1,5)],[ind,ind]))
allocate(cha10,source=reshape((/character(5)::"12345","12345","12345","12345"/),[2,2]))
if (all(cha01/=(/"12345","12345","12345","12345"/))) print *,'fail'
if (all(cha02/=reshape((/"12345","12345","12345","12345","12345"/),(/2,2/)))) print *,'fail'
if (all(cha03/=reshape([cntarr],[2,2]))) print *,'fail'
if (all(cha04/=reshape([cntarr],[2,2]))) print *,'fail'
if (all(cha05/=reshape([(/"12345","12345","12345","12345"/)],[(/2,2/)]))) print *,'fail'
if (all(cha06/=reshape([(/"12345","12345","12345","12345"/)],[(/2,2/)]))) print *,'fail'
if (all(cha07/=reshape([[cntcha],[cntcha],[cntcha],[cntcha]],[[ind],[ind]]))) print *,'fail'
if (all(cha08/=reshape([[[cntcha],[[cntcha],[cntcha]],[cntcha]]],[[[ind],[ind]]]))) print *,'fail'
if (all(cha09/=reshape([("12345",i=1,5)],[ind,ind]))) print *,'fail'
if (all(cha10/=reshape((/character(5)::"12345","12345","12345","12345"/),[2,2]))) print *,'fail'
print *,'pass'
end
