module mod
 integer :: iii=100
 integer :: ip01= 1,ip02= 2,ip03= 3,ip04= 4,ip05= 5,ip06= 6,ip07= 7,ip08= 8,ip09= 9,ip10=10
 integer :: ip11=11,ip12=12,ip13=13,ip14=14,ip15=15,ip16=16,ip17=17,ip18=18,ip19=19,ip20=20
 integer :: ip21=21,ip22=22,ip23=23,ip24=24,ip25=25,ip26=26,ip27=27,ip28=28,ip29=29,ip30=30
 integer :: ip31=31,ip32=32,ip33=33,ip34=34,ip35=35,ip36=36,ip37=37,ip38=38,ip39=39,ip40=40
 integer :: ip41=41,ip42=42,ip43=43,ip44=44,ip45=45,ip46=46,ip47=47,ip48=48,ip49=49,ip50=50
 integer :: ip51=51,ip52=52,ip53=53,ip54=54,ip55=55,ip56=56,ip57=57,ip58=58,ip59=59,ip60=60
 integer :: ip61=61,ip62=62,ip63=63,ip64=64,ip65=65,ip66=66,ip67=67,ip68=68,ip69=69,ip70=70
 integer :: ip71=71,ip72=72,ip73=73,ip74=74,ip75=75,ip76=76,ip77=77,ip78=78,ip79=79,ip80=80
 integer :: ip81=81,ip82=82,ip83=83,ip84=84,ip85=85,ip86=86,ip87=87,ip88=88,ip89=89,ip90=90
 integer :: ip91=91,ip92=92,ip93=93,ip94=94,ip95=95,ip96=96,ip97=97,ip98=98,ip99=99,ip00=00
end module
module mod0
 integer :: jjj=100
 integer :: jp01= 1,jp02= 2,jp03= 3,jp04= 4,jp05= 5,jp06= 6,jp07= 7,jp08= 8,jp09= 9,jp10=10
 integer :: jp11=11,jp12=12,jp13=13,jp14=14,jp15=15,jp16=16,jp17=17,jp18=18,jp19=19,jp20=20
 integer :: jp21=21,jp22=22,jp23=23,jp24=24,jp25=25,jp26=26,jp27=27,jp28=28,jp29=29,jp30=30
 integer :: jp31=31,jp32=32,jp33=33,jp34=34,jp35=35,jp36=36,jp37=37,jp38=38,jp39=39,jp40=40
 integer :: jp41=41,jp42=42,jp43=43,jp44=44,jp45=45,jp46=46,jp47=47,jp48=48,jp49=49,jp50=50
 integer :: jp51=51,jp52=52,jp53=53,jp54=54,jp55=55,jp56=56,jp57=57,jp58=58,jp59=59,jp60=60
 integer :: jp61=61,jp62=62,jp63=63,jp64=64,jp65=65,jp66=66,jp67=67,jp68=68,jp69=69,jp70=70
 integer :: jp71=71,jp72=72,jp73=73,jp74=74,jp75=75,jp76=76,jp77=77,jp78=78,jp79=79,jp80=80
 integer :: jp81=81,jp82=82,jp83=83,jp84=84,jp85=85,jp86=86,jp87=87,jp88=88,jp89=89,jp90=90
 integer :: jp91=91,jp92=92,jp93=93,jp94=94,jp95=95,jp96=96,jp97=97,jp98=98,jp99=99,jp00=00
end module
module mod1
 use mod,only:iii
 use mod0,only:jjj
 use mod,only:ip01,ip02,ip03,ip04,ip05,ip06,ip07,ip08,ip09,ip10
 use mod,only:ip11,ip12,ip13,ip14,ip15,ip16,ip17,ip18,ip19,ip20
 use mod,only:ip21,ip22,ip23,ip24,ip25,ip26,ip27,ip28,ip29,ip30
 use mod,only:ip31,ip32,ip33,ip34,ip35,ip36,ip37,ip38,ip39,ip40
 use mod,only:ip41,ip42,ip43,ip44,ip45,ip46,ip47,ip48,ip49,ip50
 use mod,only:ip51,ip52,ip53,ip54,ip55,ip56,ip57,ip58,ip59,ip60
 use mod,only:ip61,ip62,ip63,ip64,ip65,ip66,ip67,ip68,ip69,ip70
 use mod,only:ip71,ip72,ip73,ip74,ip75,ip76,ip77,ip78,ip79,ip80
 use mod,only:ip81,ip82,ip83,ip84,ip85,ip86,ip87,ip88,ip89,ip90
 use mod,only:ip91,ip92,ip93,ip94,ip95,ip96,ip97,ip98,ip99,ip00
 use mod0,only:jp01,jp02,jp03,jp04,jp05,jp06,jp07,jp08,jp09,jp10
 use mod0,only:jp11,jp12,jp13,jp14,jp15,jp16,jp17,jp18,jp19,jp20
 use mod0,only:jp21,jp22,jp23,jp24,jp25,jp26,jp27,jp28,jp29,jp30
 use mod0,only:jp31,jp32,jp33,jp34,jp35,jp36,jp37,jp38,jp39,jp40
 use mod0,only:jp41,jp42,jp43,jp44,jp45,jp46,jp47,jp48,jp49,jp50
 use mod0,only:jp51,jp52,jp53,jp54,jp55,jp56,jp57,jp58,jp59,jp60
 use mod0,only:jp61,jp62,jp63,jp64,jp65,jp66,jp67,jp68,jp69,jp70
 use mod0,only:jp71,jp72,jp73,jp74,jp75,jp76,jp77,jp78,jp79,jp80
 use mod0,only:jp81,jp82,jp83,jp84,jp85,jp86,jp87,jp88,jp89,jp90
 use mod0,only:jp91,jp92,jp93,jp94,jp95,jp96,jp97,jp98,jp99,jp00
end module
module mod1v
 use mod1,only:iii
 use mod1,only:jjj
 use mod1,only:ip01,ip02,ip03,ip04,ip05,ip06,ip07,ip08,ip09,ip10
 use mod1,only:ip11,ip12,ip13,ip14,ip15,ip16,ip17,ip18,ip19,ip20
 use mod,only:ip21,ip22,ip23,ip24,ip25,ip26,ip27,ip28,ip29,ip30
 use mod1,only:ip31,ip32,ip33,ip34,ip35,ip36,ip37,ip38,ip39,ip40
 use mod,only:ip41,ip42,ip43,ip44,ip45,ip46,ip47,ip48,ip49,ip50
 use mod,only:ip51,ip52,ip53,ip54,ip55,ip56,ip57,ip58,ip59,ip60
 use mod1,only:ip61,ip62,ip63,ip64,ip65,ip66,ip67,ip68,ip69,ip70
 use mod,only:ip71,ip72,ip73,ip74,ip75,ip76,ip77,ip78,ip79,ip80
 use mod1,only:ip81,ip82,ip83,ip84,ip85,ip86,ip87,ip88,ip89,ip90
 use mod,only:ip91,ip92,ip93,ip94,ip95,ip96,ip97,ip98,ip99,ip00
 use mod1,only:jp01,jp02,jp03,jp04,jp05,jp06,jp07,jp08,jp09,jp10
 use mod1,only:jp11,jp12,jp13,jp14,jp15,jp16,jp17,jp18,jp19,jp20
 use mod1,only:jp21,jp22,jp23,jp24,jp25,jp26,jp27,jp28,jp29,jp30
 use mod1,only:jp31,jp32,jp33,jp34,jp35,jp36,jp37,jp38,jp39,jp40
 use mod0,only:jp41,jp42,jp43,jp44,jp45,jp46,jp47,jp48,jp49,jp50
 use mod0,only:jp51,jp52,jp53,jp54,jp55,jp56,jp57,jp58,jp59,jp60
 use mod0,only:jp61,jp62,jp63,jp64,jp65,jp66,jp67,jp68,jp69,jp70
 use mod1,only:jp71,jp72,jp73,jp74,jp75,jp76,jp77,jp78,jp79,jp80
 use mod1,only:jp81,jp82,jp83,jp84,jp85,jp86,jp87,jp88,jp89,jp90
 use mod1,only:jp91,jp92,jp93,jp94,jp95,jp96,jp97,jp98,jp99,jp00
end module
module mod2
 use mod0,only:jjj
 use mod1,only:jp01,jp02,jp03,jp04,jp05,jp06,jp07,jp08,jp09,jp10
 use mod1,only:jp11,jp12,jp13,jp14,jp15,jp16,jp17,jp18,jp19,jp20
 use mod1,only:jp21,jp22,jp23,jp24,jp25,jp26,jp27,jp28,jp29,jp30
 use mod1,only:jp31,jp32,jp33,jp34,jp35,jp36,jp37,jp38,jp39,jp40
 use mod1,only:jp41,jp42,jp43,jp44,jp45,jp46,jp47,jp48,jp49,jp50
 use mod1,only:jp51,jp52,jp53,jp54,jp55,jp56,jp57,jp58,jp59,jp60
 use mod1,only:jp61,jp62,jp63,jp64,jp65,jp66,jp67,jp68,jp69,jp70
 use mod1,only:jp71,jp72,jp73,jp74,jp75,jp76,jp77,jp78,jp79,jp80
 use mod1,only:jp81,jp82,jp83,jp84,jp85,jp86,jp87,jp88,jp89,jp90
 use mod1,only:jp91,jp92,jp93,jp94,jp95,jp96,jp97,jp98,jp99,jp00
 use mod1,only:ip01,ip02,ip03,ip04,ip05,ip06,ip07,ip08,ip09,ip10
 use mod1,only:ip11,ip12,ip13,ip14,ip15,ip16,ip17,ip18,ip19,ip20
 use mod,only:ip21,ip22,ip23,ip24,ip25,ip26,ip27,ip28,ip29,ip30
 use mod1,only:ip31,ip32,ip33,ip34,ip35,ip36,ip37,ip38,ip39,ip40
 use mod1,only:ip41,ip42,ip43,ip44,ip45,ip46,ip47,ip48,ip49,ip50
 use mod1,only:ip51,ip52,ip53,ip54,ip55,ip56,ip57,ip58,ip59,ip60
 use mod1,only:ip61,ip62,ip63,ip64,ip65,ip66,ip67,ip68,ip69,ip70
 use mod1,only:ip71,ip72,ip73,ip74,ip75,ip76,ip77,ip78,ip79,ip80
 use mod1,only:ip81,ip82,ip83,ip84,ip85,ip86,ip87,ip88,ip89,ip90
 use mod1,only:ip91,ip92,ip93,ip94,ip95,ip96,ip97,ip98,ip99,ip00
end module

module mod2v
 use mod1v,only:jjj
 use mod1v,only:jp01,jp02,jp03,jp04,jp05,jp06,jp07,jp08,jp09,jp10
 use mod1v,only:jp11,jp12,jp13,jp14,jp15,jp16,jp17,jp18,jp19,jp20
 use mod1v,only:jp21,jp22,jp23,jp24,jp25,jp26,jp27,jp28,jp29,jp30
 use mod1v,only:jp31,jp32,jp33,jp34,jp35,jp36,jp37,jp38,jp39,jp40
 use mod1v,only:jp41,jp42,jp43,jp44,jp45,jp46,jp47,jp48,jp49,jp50
 use mod1v,only:jp51,jp52,jp53,jp54,jp55,jp56,jp57,jp58,jp59,jp60
 use mod1v,only:jp61,jp62,jp63,jp64,jp65,jp66,jp67,jp68,jp69,jp70
 use mod1v,only:jp71,jp72,jp73,jp74,jp75,jp76,jp77,jp78,jp79,jp80
 use mod1v,only:jp81,jp82,jp83,jp84,jp85,jp86,jp87,jp88,jp89,jp90
 use mod1v,only:jp91,jp92,jp93,jp94,jp95,jp96,jp97,jp98,jp99,jp00
 use mod2,only:sss=>jp91
end module

module mod2a
 use mod2v,only:sss
 use mod1,only:jjj
 use mod1,only:jp01,jp02,jp03,jp04,jp05,jp06,jp07,jp08,jp09,jp10
 use mod1,only:jp11,jp12,jp13,jp14,jp15,jp16,jp17,jp18,jp19,jp20
 use mod1,only:jp21,jp22,jp23,jp24,jp25,jp26,jp27,jp28,jp29,jp30
 use mod1,only:jp31,jp32,jp33,jp34,jp35,jp36,jp37,jp38,jp39,jp40
 use mod1,only:jp41,jp42,jp43,jp44,jp45,jp46,jp47,jp48,jp49,jp50
 use mod1,only:jp51,jp52,jp53,jp54,jp55,jp56,jp57,jp58,jp59,jp60
 use mod1,only:jp61,jp62,jp63,jp64,jp65,jp66,jp67,jp68,jp69,jp70
 use mod1,only:jp71,jp72,jp73,jp74,jp75,jp76,jp77,jp78,jp79,jp80
 use mod1,only:jp81,jp82,jp83,jp84,jp85,jp86,jp87,jp88,jp89,jp90
 use mod1,only:jp91,jp92,jp93,jp94,jp95,jp96,jp97,jp98,jp99,jp00
 use mod2v,only:jjj,sss
 use mod2v,only:jp01,jp02,jp03,jp04,jp05,jp06,jp07,jp08,jp09,jp10
 use mod2v,only:jp11,jp12,jp13,jp14,jp15,jp16,jp17,jp18,jp19,jp20
 use mod2v,only:jp21,jp22,jp23,jp24,jp25,jp26,jp27,jp28,jp29,jp30
 use mod2v,only:jp31,jp32,jp33,jp34,jp35,jp36,jp37,jp38,jp39,jp40
 use mod2v,only:jp41,jp42,jp43,jp44,jp45,jp46,jp47,jp48,jp49,jp50
 use mod2v,only:jp51,jp52,jp53,jp54,jp55,jp56,jp57,jp58,jp59,jp60
 use mod2v,only:jp61,jp62,jp63,jp64,jp65,jp66,jp67,jp68,jp69,jp70
 use mod2v,only:jp71,jp72,jp73,jp74,jp75,jp76,jp77,jp78,jp79,jp80
 use mod2v,only:jp81,jp82,jp83,jp84,jp85,jp86,jp87,jp88,jp89,jp90
 use mod2v,only:jp91,jp92,jp93,jp94,jp95,jp96,jp97,jp98,jp99,jp00

end module
module mod3
 use mod2,only:jjj,ip53
 use mod2a,only:jjj,jp22
end module

use mod3
if(100.ne.jjj) write(6,*) "NG"
print *,"pass"
end
