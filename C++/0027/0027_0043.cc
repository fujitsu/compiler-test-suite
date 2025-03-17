#include <math.h>
#include <stdio.h>

typedef double test_t;

double (*lib)(double, double) = pow;

#define NUM_TESTS 10

#define TEST_PROC(xx, yy)                                                      \
  void test_pow##xx(const test_t input[]) {                                    \
    test_t tmp, res;                                                           \
                                                                               \
    for (int i = 0; i < NUM_TESTS; i++) {                                      \
      tmp = pow(input[i], yy);                                                 \
      res = lib(input[i], yy);                                                 \
      if (isnan(res)) {                                                        \
        if (!isnan(tmp)) {                                                     \
          printf("NG %d %d %g %f %g\n", __LINE__, i, input[i], res, tmp);      \
        }                                                                      \
      } else if (res != tmp) {                                                 \
        printf("NG %d %d %g %f %g\n", __LINE__, i, input[i], res, tmp);        \
      }                                                                        \
    }                                                                          \
  }

TEST_PROC(m2005, -200.500000)
TEST_PROC(m2000, -200.000000)
TEST_PROC(m1995, -199.500000)
TEST_PROC(m1990, -199.000000)
TEST_PROC(m1985, -198.500000)
TEST_PROC(m1980, -198.000000)
TEST_PROC(m1975, -197.500000)
TEST_PROC(m1970, -197.000000)
TEST_PROC(m1965, -196.500000)
TEST_PROC(m1960, -196.000000)
TEST_PROC(m1955, -195.500000)
TEST_PROC(m1950, -195.000000)
TEST_PROC(m1945, -194.500000)
TEST_PROC(m1940, -194.000000)
TEST_PROC(m1935, -193.500000)
TEST_PROC(m1930, -193.000000)
TEST_PROC(m1925, -192.500000)
TEST_PROC(m1920, -192.000000)
TEST_PROC(m1915, -191.500000)
TEST_PROC(m1910, -191.000000)
TEST_PROC(m1905, -190.500000)
TEST_PROC(m1900, -190.000000)
TEST_PROC(m1895, -189.500000)
TEST_PROC(m1890, -189.000000)
TEST_PROC(m1885, -188.500000)
TEST_PROC(m1880, -188.000000)
TEST_PROC(m1875, -187.500000)
TEST_PROC(m1870, -187.000000)
TEST_PROC(m1865, -186.500000)
TEST_PROC(m1860, -186.000000)
TEST_PROC(m1855, -185.500000)
TEST_PROC(m1850, -185.000000)
TEST_PROC(m1845, -184.500000)
TEST_PROC(m1840, -184.000000)
TEST_PROC(m1835, -183.500000)
TEST_PROC(m1830, -183.000000)
TEST_PROC(m1825, -182.500000)
TEST_PROC(m1820, -182.000000)
TEST_PROC(m1815, -181.500000)
TEST_PROC(m1810, -181.000000)
TEST_PROC(m1805, -180.500000)
TEST_PROC(m1800, -180.000000)
TEST_PROC(m1795, -179.500000)
TEST_PROC(m1790, -179.000000)
TEST_PROC(m1785, -178.500000)
TEST_PROC(m1780, -178.000000)
TEST_PROC(m1775, -177.500000)
TEST_PROC(m1770, -177.000000)
TEST_PROC(m1765, -176.500000)
TEST_PROC(m1760, -176.000000)
TEST_PROC(m1755, -175.500000)
TEST_PROC(m1750, -175.000000)
TEST_PROC(m1745, -174.500000)
TEST_PROC(m1740, -174.000000)
TEST_PROC(m1735, -173.500000)
TEST_PROC(m1730, -173.000000)
TEST_PROC(m1725, -172.500000)
TEST_PROC(m1720, -172.000000)
TEST_PROC(m1715, -171.500000)
TEST_PROC(m1710, -171.000000)
TEST_PROC(m1705, -170.500000)
TEST_PROC(m1700, -170.000000)
TEST_PROC(m1695, -169.500000)
TEST_PROC(m1690, -169.000000)
TEST_PROC(m1685, -168.500000)
TEST_PROC(m1680, -168.000000)
TEST_PROC(m1675, -167.500000)
TEST_PROC(m1670, -167.000000)
TEST_PROC(m1665, -166.500000)
TEST_PROC(m1660, -166.000000)
TEST_PROC(m1655, -165.500000)
TEST_PROC(m1650, -165.000000)
TEST_PROC(m1645, -164.500000)
TEST_PROC(m1640, -164.000000)
TEST_PROC(m1635, -163.500000)
TEST_PROC(m1630, -163.000000)
TEST_PROC(m1625, -162.500000)
TEST_PROC(m1620, -162.000000)
TEST_PROC(m1615, -161.500000)
TEST_PROC(m1610, -161.000000)
TEST_PROC(m1605, -160.500000)
TEST_PROC(m1600, -160.000000)
TEST_PROC(m1595, -159.500000)
TEST_PROC(m1590, -159.000000)
TEST_PROC(m1585, -158.500000)
TEST_PROC(m1580, -158.000000)
TEST_PROC(m1575, -157.500000)
TEST_PROC(m1570, -157.000000)
TEST_PROC(m1565, -156.500000)
TEST_PROC(m1560, -156.000000)
TEST_PROC(m1555, -155.500000)
TEST_PROC(m1550, -155.000000)
TEST_PROC(m1545, -154.500000)
TEST_PROC(m1540, -154.000000)
TEST_PROC(m1535, -153.500000)
TEST_PROC(m1530, -153.000000)
TEST_PROC(m1525, -152.500000)
TEST_PROC(m1520, -152.000000)
TEST_PROC(m1515, -151.500000)
TEST_PROC(m1510, -151.000000)
TEST_PROC(m1505, -150.500000)
TEST_PROC(m1500, -150.000000)
TEST_PROC(m1495, -149.500000)
TEST_PROC(m1490, -149.000000)
TEST_PROC(m1485, -148.500000)
TEST_PROC(m1480, -148.000000)
TEST_PROC(m1475, -147.500000)
TEST_PROC(m1470, -147.000000)
TEST_PROC(m1465, -146.500000)
TEST_PROC(m1460, -146.000000)
TEST_PROC(m1455, -145.500000)
TEST_PROC(m1450, -145.000000)
TEST_PROC(m1445, -144.500000)
TEST_PROC(m1440, -144.000000)
TEST_PROC(m1435, -143.500000)
TEST_PROC(m1430, -143.000000)
TEST_PROC(m1425, -142.500000)
TEST_PROC(m1420, -142.000000)
TEST_PROC(m1415, -141.500000)
TEST_PROC(m1410, -141.000000)
TEST_PROC(m1405, -140.500000)
TEST_PROC(m1400, -140.000000)
TEST_PROC(m1395, -139.500000)
TEST_PROC(m1390, -139.000000)
TEST_PROC(m1385, -138.500000)
TEST_PROC(m1380, -138.000000)
TEST_PROC(m1375, -137.500000)
TEST_PROC(m1370, -137.000000)
TEST_PROC(m1365, -136.500000)
TEST_PROC(m1360, -136.000000)
TEST_PROC(m1355, -135.500000)
TEST_PROC(m1350, -135.000000)
TEST_PROC(m1345, -134.500000)
TEST_PROC(m1340, -134.000000)
TEST_PROC(m1335, -133.500000)
TEST_PROC(m1330, -133.000000)
TEST_PROC(m1325, -132.500000)
TEST_PROC(m1320, -132.000000)
TEST_PROC(m1315, -131.500000)
TEST_PROC(m1310, -131.000000)
TEST_PROC(m1305, -130.500000)
TEST_PROC(m1300, -130.000000)
TEST_PROC(m1295, -129.500000)
TEST_PROC(m1290, -129.000000)
TEST_PROC(m1285, -128.500000)
TEST_PROC(m1280, -128.000000)
TEST_PROC(m1275, -127.500000)
TEST_PROC(m1270, -127.000000)
TEST_PROC(m1265, -126.500000)
TEST_PROC(m1260, -126.000000)
TEST_PROC(m1255, -125.500000)
TEST_PROC(m1250, -125.000000)
TEST_PROC(m1245, -124.500000)
TEST_PROC(m1240, -124.000000)
TEST_PROC(m1235, -123.500000)
TEST_PROC(m1230, -123.000000)
TEST_PROC(m1225, -122.500000)
TEST_PROC(m1220, -122.000000)
TEST_PROC(m1215, -121.500000)
TEST_PROC(m1210, -121.000000)
TEST_PROC(m1205, -120.500000)
TEST_PROC(m1200, -120.000000)
TEST_PROC(m1195, -119.500000)
TEST_PROC(m1190, -119.000000)
TEST_PROC(m1185, -118.500000)
TEST_PROC(m1180, -118.000000)
TEST_PROC(m1175, -117.500000)
TEST_PROC(m1170, -117.000000)
TEST_PROC(m1165, -116.500000)
TEST_PROC(m1160, -116.000000)
TEST_PROC(m1155, -115.500000)
TEST_PROC(m1150, -115.000000)
TEST_PROC(m1145, -114.500000)
TEST_PROC(m1140, -114.000000)
TEST_PROC(m1135, -113.500000)
TEST_PROC(m1130, -113.000000)
TEST_PROC(m1125, -112.500000)
TEST_PROC(m1120, -112.000000)
TEST_PROC(m1115, -111.500000)
TEST_PROC(m1110, -111.000000)
TEST_PROC(m1105, -110.500000)
TEST_PROC(m1100, -110.000000)
TEST_PROC(m1095, -109.500000)
TEST_PROC(m1090, -109.000000)
TEST_PROC(m1085, -108.500000)
TEST_PROC(m1080, -108.000000)
TEST_PROC(m1075, -107.500000)
TEST_PROC(m1070, -107.000000)
TEST_PROC(m1065, -106.500000)
TEST_PROC(m1060, -106.000000)
TEST_PROC(m1055, -105.500000)
TEST_PROC(m1050, -105.000000)
TEST_PROC(m1045, -104.500000)
TEST_PROC(m1040, -104.000000)
TEST_PROC(m1035, -103.500000)
TEST_PROC(m1030, -103.000000)
TEST_PROC(m1025, -102.500000)
TEST_PROC(m1020, -102.000000)
TEST_PROC(m1015, -101.500000)
TEST_PROC(m1010, -101.000000)
TEST_PROC(m1005, -100.500000)
TEST_PROC(m1000, -100.000000)
TEST_PROC(m995, -99.5000000)
TEST_PROC(m990, -99.0000000)
TEST_PROC(m985, -98.5000000)
TEST_PROC(m980, -98.0000000)
TEST_PROC(m975, -97.5000000)
TEST_PROC(m970, -97.0000000)
TEST_PROC(m965, -96.5000000)
TEST_PROC(m960, -96.0000000)
TEST_PROC(m955, -95.5000000)
TEST_PROC(m950, -95.0000000)
TEST_PROC(m945, -94.5000000)
TEST_PROC(m940, -94.0000000)
TEST_PROC(m935, -93.5000000)
TEST_PROC(m930, -93.0000000)
TEST_PROC(m925, -92.5000000)
TEST_PROC(m920, -92.0000000)
TEST_PROC(m915, -91.5000000)
TEST_PROC(m910, -91.0000000)
TEST_PROC(m905, -90.5000000)
TEST_PROC(m900, -90.0000000)
TEST_PROC(m895, -89.5000000)
TEST_PROC(m890, -89.0000000)
TEST_PROC(m885, -88.5000000)
TEST_PROC(m880, -88.0000000)
TEST_PROC(m875, -87.5000000)
TEST_PROC(m870, -87.0000000)
TEST_PROC(m865, -86.5000000)
TEST_PROC(m860, -86.0000000)
TEST_PROC(m855, -85.5000000)
TEST_PROC(m850, -85.0000000)
TEST_PROC(m845, -84.5000000)
TEST_PROC(m840, -84.0000000)
TEST_PROC(m835, -83.5000000)
TEST_PROC(m830, -83.0000000)
TEST_PROC(m825, -82.5000000)
TEST_PROC(m820, -82.0000000)
TEST_PROC(m815, -81.5000000)
TEST_PROC(m810, -81.0000000)
TEST_PROC(m805, -80.5000000)
TEST_PROC(m800, -80.0000000)
TEST_PROC(m795, -79.5000000)
TEST_PROC(m790, -79.0000000)
TEST_PROC(m785, -78.5000000)
TEST_PROC(m780, -78.0000000)
TEST_PROC(m775, -77.5000000)
TEST_PROC(m770, -77.0000000)
TEST_PROC(m765, -76.5000000)
TEST_PROC(m760, -76.0000000)
TEST_PROC(m755, -75.5000000)
TEST_PROC(m750, -75.0000000)
TEST_PROC(m745, -74.5000000)
TEST_PROC(m740, -74.0000000)
TEST_PROC(m735, -73.5000000)
TEST_PROC(m730, -73.0000000)
TEST_PROC(m725, -72.5000000)
TEST_PROC(m720, -72.0000000)
TEST_PROC(m715, -71.5000000)
TEST_PROC(m710, -71.0000000)
TEST_PROC(m705, -70.5000000)
TEST_PROC(m700, -70.0000000)
TEST_PROC(m695, -69.5000000)
TEST_PROC(m690, -69.0000000)
TEST_PROC(m685, -68.5000000)
TEST_PROC(m680, -68.0000000)
TEST_PROC(m675, -67.5000000)
TEST_PROC(m670, -67.0000000)
TEST_PROC(m665, -66.5000000)
TEST_PROC(m660, -66.0000000)
TEST_PROC(m655, -65.5000000)
TEST_PROC(m650, -65.0000000)
TEST_PROC(m645, -64.5000000)
TEST_PROC(m640, -64.0000000)
TEST_PROC(m635, -63.5000000)
TEST_PROC(m630, -63.0000000)
TEST_PROC(m625, -62.5000000)
TEST_PROC(m620, -62.0000000)
TEST_PROC(m615, -61.5000000)
TEST_PROC(m610, -61.0000000)
TEST_PROC(m605, -60.5000000)
TEST_PROC(m600, -60.0000000)
TEST_PROC(m595, -59.5000000)
TEST_PROC(m590, -59.0000000)
TEST_PROC(m585, -58.5000000)
TEST_PROC(m580, -58.0000000)
TEST_PROC(m575, -57.5000000)
TEST_PROC(m570, -57.0000000)
TEST_PROC(m565, -56.5000000)
TEST_PROC(m560, -56.0000000)
TEST_PROC(m555, -55.5000000)
TEST_PROC(m550, -55.0000000)
TEST_PROC(m545, -54.5000000)
TEST_PROC(m540, -54.0000000)
TEST_PROC(m535, -53.5000000)
TEST_PROC(m530, -53.0000000)
TEST_PROC(m525, -52.5000000)
TEST_PROC(m520, -52.0000000)
TEST_PROC(m515, -51.5000000)
TEST_PROC(m510, -51.0000000)
TEST_PROC(m505, -50.5000000)
TEST_PROC(m500, -50.0000000)
TEST_PROC(m495, -49.5000000)
TEST_PROC(m490, -49.0000000)
TEST_PROC(m485, -48.5000000)
TEST_PROC(m480, -48.0000000)
TEST_PROC(m475, -47.5000000)
TEST_PROC(m470, -47.0000000)
TEST_PROC(m465, -46.5000000)
TEST_PROC(m460, -46.0000000)
TEST_PROC(m455, -45.5000000)
TEST_PROC(m450, -45.0000000)
TEST_PROC(m445, -44.5000000)
TEST_PROC(m440, -44.0000000)
TEST_PROC(m435, -43.5000000)
TEST_PROC(m430, -43.0000000)
TEST_PROC(m425, -42.5000000)
TEST_PROC(m420, -42.0000000)
TEST_PROC(m415, -41.5000000)
TEST_PROC(m410, -41.0000000)
TEST_PROC(m405, -40.5000000)
TEST_PROC(m400, -40.0000000)
TEST_PROC(m395, -39.5000000)
TEST_PROC(m390, -39.0000000)
TEST_PROC(m385, -38.5000000)
TEST_PROC(m380, -38.0000000)
TEST_PROC(m375, -37.5000000)
TEST_PROC(m370, -37.0000000)
TEST_PROC(m365, -36.5000000)
TEST_PROC(m360, -36.0000000)
TEST_PROC(m355, -35.5000000)
TEST_PROC(m350, -35.0000000)
TEST_PROC(m345, -34.5000000)
TEST_PROC(m340, -34.0000000)
TEST_PROC(m335, -33.5000000)
TEST_PROC(m330, -33.0000000)
TEST_PROC(m325, -32.5000000)
TEST_PROC(m320, -32.0000000)
TEST_PROC(m315, -31.5000000)
TEST_PROC(m310, -31.0000000)
TEST_PROC(m305, -30.5000000)
TEST_PROC(m300, -30.0000000)
TEST_PROC(m295, -29.5000000)
TEST_PROC(m290, -29.0000000)
TEST_PROC(m285, -28.5000000)
TEST_PROC(m280, -28.0000000)
TEST_PROC(m275, -27.5000000)
TEST_PROC(m270, -27.0000000)
TEST_PROC(m265, -26.5000000)
TEST_PROC(m260, -26.0000000)
TEST_PROC(m255, -25.5000000)
TEST_PROC(m250, -25.0000000)
TEST_PROC(m245, -24.5000000)
TEST_PROC(m240, -24.0000000)
TEST_PROC(m235, -23.5000000)
TEST_PROC(m230, -23.0000000)
TEST_PROC(m225, -22.5000000)
TEST_PROC(m220, -22.0000000)
TEST_PROC(m215, -21.5000000)
TEST_PROC(m210, -21.0000000)
TEST_PROC(m205, -20.5000000)
TEST_PROC(m200, -20.0000000)
TEST_PROC(m195, -19.5000000)
TEST_PROC(m190, -19.0000000)
TEST_PROC(m185, -18.5000000)
TEST_PROC(m180, -18.0000000)
TEST_PROC(m175, -17.5000000)
TEST_PROC(m170, -17.0000000)
TEST_PROC(m165, -16.5000000)
TEST_PROC(m160, -16.0000000)
TEST_PROC(m155, -15.5000000)
TEST_PROC(m150, -15.0000000)
TEST_PROC(m145, -14.5000000)
TEST_PROC(m140, -14.0000000)
TEST_PROC(m135, -13.5000000)
TEST_PROC(m130, -13.0000000)
TEST_PROC(m125, -12.5000000)
TEST_PROC(m120, -12.0000000)
TEST_PROC(m115, -11.5000000)
TEST_PROC(m110, -11.0000000)
TEST_PROC(m105, -10.5000000)
TEST_PROC(m100, -10.0000000)
TEST_PROC(m95, -9.50000000)
TEST_PROC(m90, -9.00000000)
TEST_PROC(m85, -8.50000000)
TEST_PROC(m80, -8.00000000)
TEST_PROC(m75, -7.50000000)
TEST_PROC(m70, -7.00000000)
TEST_PROC(m65, -6.50000000)
TEST_PROC(m60, -6.00000000)
TEST_PROC(m55, -5.50000000)
TEST_PROC(m50, -5.00000000)
TEST_PROC(m45, -4.50000000)
TEST_PROC(m40, -4.00000000)
TEST_PROC(m35, -3.50000000)
TEST_PROC(m30, -3.00000000)
TEST_PROC(m25, -2.50000000)
TEST_PROC(m20, -2.00000000)
TEST_PROC(m15, -1.50000000)
TEST_PROC(m10, -1.00000000)
TEST_PROC(m5, -0.500000000)
TEST_PROC(0, 0.000000000e+00)
TEST_PROC(5, 0.500000000)
TEST_PROC(10, 1.00000000)
TEST_PROC(15, 1.50000000)
TEST_PROC(20, 2.00000000)
TEST_PROC(25, 2.50000000)
TEST_PROC(30, 3.00000000)
TEST_PROC(35, 3.50000000)
TEST_PROC(40, 4.00000000)
TEST_PROC(45, 4.50000000)
TEST_PROC(50, 5.00000000)
TEST_PROC(55, 5.50000000)
TEST_PROC(60, 6.00000000)
TEST_PROC(65, 6.50000000)
TEST_PROC(70, 7.00000000)
TEST_PROC(75, 7.50000000)
TEST_PROC(80, 8.00000000)
TEST_PROC(85, 8.50000000)
TEST_PROC(90, 9.00000000)
TEST_PROC(95, 9.50000000)
TEST_PROC(100, 10.0000000)
TEST_PROC(105, 10.5000000)
TEST_PROC(110, 11.0000000)
TEST_PROC(115, 11.5000000)
TEST_PROC(120, 12.0000000)
TEST_PROC(125, 12.5000000)
TEST_PROC(130, 13.0000000)
TEST_PROC(135, 13.5000000)
TEST_PROC(140, 14.0000000)
TEST_PROC(145, 14.5000000)
TEST_PROC(150, 15.0000000)
TEST_PROC(155, 15.5000000)
TEST_PROC(160, 16.0000000)
TEST_PROC(165, 16.5000000)
TEST_PROC(170, 17.0000000)
TEST_PROC(175, 17.5000000)
TEST_PROC(180, 18.0000000)
TEST_PROC(185, 18.5000000)
TEST_PROC(190, 19.0000000)
TEST_PROC(195, 19.5000000)
TEST_PROC(200, 20.0000000)
TEST_PROC(205, 20.5000000)
TEST_PROC(210, 21.0000000)
TEST_PROC(215, 21.5000000)
TEST_PROC(220, 22.0000000)
TEST_PROC(225, 22.5000000)
TEST_PROC(230, 23.0000000)
TEST_PROC(235, 23.5000000)
TEST_PROC(240, 24.0000000)
TEST_PROC(245, 24.5000000)
TEST_PROC(250, 25.0000000)
TEST_PROC(255, 25.5000000)
TEST_PROC(260, 26.0000000)
TEST_PROC(265, 26.5000000)
TEST_PROC(270, 27.0000000)
TEST_PROC(275, 27.5000000)
TEST_PROC(280, 28.0000000)
TEST_PROC(285, 28.5000000)
TEST_PROC(290, 29.0000000)
TEST_PROC(295, 29.5000000)
TEST_PROC(300, 30.0000000)
TEST_PROC(305, 30.5000000)
TEST_PROC(310, 31.0000000)
TEST_PROC(315, 31.5000000)
TEST_PROC(320, 32.0000000)
TEST_PROC(325, 32.5000000)
TEST_PROC(330, 33.0000000)
TEST_PROC(335, 33.5000000)
TEST_PROC(340, 34.0000000)
TEST_PROC(345, 34.5000000)
TEST_PROC(350, 35.0000000)
TEST_PROC(355, 35.5000000)
TEST_PROC(360, 36.0000000)
TEST_PROC(365, 36.5000000)
TEST_PROC(370, 37.0000000)
TEST_PROC(375, 37.5000000)
TEST_PROC(380, 38.0000000)
TEST_PROC(385, 38.5000000)
TEST_PROC(390, 39.0000000)
TEST_PROC(395, 39.5000000)
TEST_PROC(400, 40.0000000)
TEST_PROC(405, 40.5000000)
TEST_PROC(410, 41.0000000)
TEST_PROC(415, 41.5000000)
TEST_PROC(420, 42.0000000)
TEST_PROC(425, 42.5000000)
TEST_PROC(430, 43.0000000)
TEST_PROC(435, 43.5000000)
TEST_PROC(440, 44.0000000)
TEST_PROC(445, 44.5000000)
TEST_PROC(450, 45.0000000)
TEST_PROC(455, 45.5000000)
TEST_PROC(460, 46.0000000)
TEST_PROC(465, 46.5000000)
TEST_PROC(470, 47.0000000)
TEST_PROC(475, 47.5000000)
TEST_PROC(480, 48.0000000)
TEST_PROC(485, 48.5000000)
TEST_PROC(490, 49.0000000)
TEST_PROC(495, 49.5000000)
TEST_PROC(500, 50.0000000)
TEST_PROC(505, 50.5000000)
TEST_PROC(510, 51.0000000)
TEST_PROC(515, 51.5000000)
TEST_PROC(520, 52.0000000)
TEST_PROC(525, 52.5000000)
TEST_PROC(530, 53.0000000)
TEST_PROC(535, 53.5000000)
TEST_PROC(540, 54.0000000)
TEST_PROC(545, 54.5000000)
TEST_PROC(550, 55.0000000)
TEST_PROC(555, 55.5000000)
TEST_PROC(560, 56.0000000)
TEST_PROC(565, 56.5000000)
TEST_PROC(570, 57.0000000)
TEST_PROC(575, 57.5000000)
TEST_PROC(580, 58.0000000)
TEST_PROC(585, 58.5000000)
TEST_PROC(590, 59.0000000)
TEST_PROC(595, 59.5000000)
TEST_PROC(600, 60.0000000)
TEST_PROC(605, 60.5000000)
TEST_PROC(610, 61.0000000)
TEST_PROC(615, 61.5000000)
TEST_PROC(620, 62.0000000)
TEST_PROC(625, 62.5000000)
TEST_PROC(630, 63.0000000)
TEST_PROC(635, 63.5000000)
TEST_PROC(640, 64.0000000)
TEST_PROC(645, 64.5000000)
TEST_PROC(650, 65.0000000)
TEST_PROC(655, 65.5000000)
TEST_PROC(660, 66.0000000)
TEST_PROC(665, 66.5000000)
TEST_PROC(670, 67.0000000)
TEST_PROC(675, 67.5000000)
TEST_PROC(680, 68.0000000)
TEST_PROC(685, 68.5000000)
TEST_PROC(690, 69.0000000)
TEST_PROC(695, 69.5000000)
TEST_PROC(700, 70.0000000)
TEST_PROC(705, 70.5000000)
TEST_PROC(710, 71.0000000)
TEST_PROC(715, 71.5000000)
TEST_PROC(720, 72.0000000)
TEST_PROC(725, 72.5000000)
TEST_PROC(730, 73.0000000)
TEST_PROC(735, 73.5000000)
TEST_PROC(740, 74.0000000)
TEST_PROC(745, 74.5000000)
TEST_PROC(750, 75.0000000)
TEST_PROC(755, 75.5000000)
TEST_PROC(760, 76.0000000)
TEST_PROC(765, 76.5000000)
TEST_PROC(770, 77.0000000)
TEST_PROC(775, 77.5000000)
TEST_PROC(780, 78.0000000)
TEST_PROC(785, 78.5000000)
TEST_PROC(790, 79.0000000)
TEST_PROC(795, 79.5000000)
TEST_PROC(800, 80.0000000)
TEST_PROC(805, 80.5000000)
TEST_PROC(810, 81.0000000)
TEST_PROC(815, 81.5000000)
TEST_PROC(820, 82.0000000)
TEST_PROC(825, 82.5000000)
TEST_PROC(830, 83.0000000)
TEST_PROC(835, 83.5000000)
TEST_PROC(840, 84.0000000)
TEST_PROC(845, 84.5000000)
TEST_PROC(850, 85.0000000)
TEST_PROC(855, 85.5000000)
TEST_PROC(860, 86.0000000)
TEST_PROC(865, 86.5000000)
TEST_PROC(870, 87.0000000)
TEST_PROC(875, 87.5000000)
TEST_PROC(880, 88.0000000)
TEST_PROC(885, 88.5000000)
TEST_PROC(890, 89.0000000)
TEST_PROC(895, 89.5000000)
TEST_PROC(900, 90.0000000)
TEST_PROC(905, 90.5000000)
TEST_PROC(910, 91.0000000)
TEST_PROC(915, 91.5000000)
TEST_PROC(920, 92.0000000)
TEST_PROC(925, 92.5000000)
TEST_PROC(930, 93.0000000)
TEST_PROC(935, 93.5000000)
TEST_PROC(940, 94.0000000)
TEST_PROC(945, 94.5000000)
TEST_PROC(950, 95.0000000)
TEST_PROC(955, 95.5000000)
TEST_PROC(960, 96.0000000)
TEST_PROC(965, 96.5000000)
TEST_PROC(970, 97.0000000)
TEST_PROC(975, 97.5000000)
TEST_PROC(980, 98.0000000)
TEST_PROC(985, 98.5000000)
TEST_PROC(990, 99.0000000)
TEST_PROC(995, 99.5000000)
TEST_PROC(1000, 100.000000)
TEST_PROC(1005, 100.500000)
TEST_PROC(1010, 101.000000)
TEST_PROC(1015, 101.500000)
TEST_PROC(1020, 102.000000)
TEST_PROC(1025, 102.500000)
TEST_PROC(1030, 103.000000)
TEST_PROC(1035, 103.500000)
TEST_PROC(1040, 104.000000)
TEST_PROC(1045, 104.500000)
TEST_PROC(1050, 105.000000)
TEST_PROC(1055, 105.500000)
TEST_PROC(1060, 106.000000)
TEST_PROC(1065, 106.500000)
TEST_PROC(1070, 107.000000)
TEST_PROC(1075, 107.500000)
TEST_PROC(1080, 108.000000)
TEST_PROC(1085, 108.500000)
TEST_PROC(1090, 109.000000)
TEST_PROC(1095, 109.500000)
TEST_PROC(1100, 110.000000)
TEST_PROC(1105, 110.500000)
TEST_PROC(1110, 111.000000)
TEST_PROC(1115, 111.500000)
TEST_PROC(1120, 112.000000)
TEST_PROC(1125, 112.500000)
TEST_PROC(1130, 113.000000)
TEST_PROC(1135, 113.500000)
TEST_PROC(1140, 114.000000)
TEST_PROC(1145, 114.500000)
TEST_PROC(1150, 115.000000)
TEST_PROC(1155, 115.500000)
TEST_PROC(1160, 116.000000)
TEST_PROC(1165, 116.500000)
TEST_PROC(1170, 117.000000)
TEST_PROC(1175, 117.500000)
TEST_PROC(1180, 118.000000)
TEST_PROC(1185, 118.500000)
TEST_PROC(1190, 119.000000)
TEST_PROC(1195, 119.500000)
TEST_PROC(1200, 120.000000)
TEST_PROC(1205, 120.500000)
TEST_PROC(1210, 121.000000)
TEST_PROC(1215, 121.500000)
TEST_PROC(1220, 122.000000)
TEST_PROC(1225, 122.500000)
TEST_PROC(1230, 123.000000)
TEST_PROC(1235, 123.500000)
TEST_PROC(1240, 124.000000)
TEST_PROC(1245, 124.500000)
TEST_PROC(1250, 125.000000)
TEST_PROC(1255, 125.500000)
TEST_PROC(1260, 126.000000)
TEST_PROC(1265, 126.500000)
TEST_PROC(1270, 127.000000)
TEST_PROC(1275, 127.500000)
TEST_PROC(1280, 128.000000)
TEST_PROC(1285, 128.500000)
TEST_PROC(1290, 129.000000)
TEST_PROC(1295, 129.500000)
TEST_PROC(1300, 130.000000)
TEST_PROC(1305, 130.500000)
TEST_PROC(1310, 131.000000)
TEST_PROC(1315, 131.500000)
TEST_PROC(1320, 132.000000)
TEST_PROC(1325, 132.500000)
TEST_PROC(1330, 133.000000)
TEST_PROC(1335, 133.500000)
TEST_PROC(1340, 134.000000)
TEST_PROC(1345, 134.500000)
TEST_PROC(1350, 135.000000)
TEST_PROC(1355, 135.500000)
TEST_PROC(1360, 136.000000)
TEST_PROC(1365, 136.500000)
TEST_PROC(1370, 137.000000)
TEST_PROC(1375, 137.500000)
TEST_PROC(1380, 138.000000)
TEST_PROC(1385, 138.500000)
TEST_PROC(1390, 139.000000)
TEST_PROC(1395, 139.500000)
TEST_PROC(1400, 140.000000)
TEST_PROC(1405, 140.500000)
TEST_PROC(1410, 141.000000)
TEST_PROC(1415, 141.500000)
TEST_PROC(1420, 142.000000)
TEST_PROC(1425, 142.500000)
TEST_PROC(1430, 143.000000)
TEST_PROC(1435, 143.500000)
TEST_PROC(1440, 144.000000)
TEST_PROC(1445, 144.500000)
TEST_PROC(1450, 145.000000)
TEST_PROC(1455, 145.500000)
TEST_PROC(1460, 146.000000)
TEST_PROC(1465, 146.500000)
TEST_PROC(1470, 147.000000)
TEST_PROC(1475, 147.500000)
TEST_PROC(1480, 148.000000)
TEST_PROC(1485, 148.500000)
TEST_PROC(1490, 149.000000)
TEST_PROC(1495, 149.500000)
TEST_PROC(1500, 150.000000)
TEST_PROC(1505, 150.500000)
TEST_PROC(1510, 151.000000)
TEST_PROC(1515, 151.500000)
TEST_PROC(1520, 152.000000)
TEST_PROC(1525, 152.500000)
TEST_PROC(1530, 153.000000)
TEST_PROC(1535, 153.500000)
TEST_PROC(1540, 154.000000)
TEST_PROC(1545, 154.500000)
TEST_PROC(1550, 155.000000)
TEST_PROC(1555, 155.500000)
TEST_PROC(1560, 156.000000)
TEST_PROC(1565, 156.500000)
TEST_PROC(1570, 157.000000)
TEST_PROC(1575, 157.500000)
TEST_PROC(1580, 158.000000)
TEST_PROC(1585, 158.500000)
TEST_PROC(1590, 159.000000)
TEST_PROC(1595, 159.500000)
TEST_PROC(1600, 160.000000)
TEST_PROC(1605, 160.500000)
TEST_PROC(1610, 161.000000)
TEST_PROC(1615, 161.500000)
TEST_PROC(1620, 162.000000)
TEST_PROC(1625, 162.500000)
TEST_PROC(1630, 163.000000)
TEST_PROC(1635, 163.500000)
TEST_PROC(1640, 164.000000)
TEST_PROC(1645, 164.500000)
TEST_PROC(1650, 165.000000)
TEST_PROC(1655, 165.500000)
TEST_PROC(1660, 166.000000)
TEST_PROC(1665, 166.500000)
TEST_PROC(1670, 167.000000)
TEST_PROC(1675, 167.500000)
TEST_PROC(1680, 168.000000)
TEST_PROC(1685, 168.500000)
TEST_PROC(1690, 169.000000)
TEST_PROC(1695, 169.500000)
TEST_PROC(1700, 170.000000)
TEST_PROC(1705, 170.500000)
TEST_PROC(1710, 171.000000)
TEST_PROC(1715, 171.500000)
TEST_PROC(1720, 172.000000)
TEST_PROC(1725, 172.500000)
TEST_PROC(1730, 173.000000)
TEST_PROC(1735, 173.500000)
TEST_PROC(1740, 174.000000)
TEST_PROC(1745, 174.500000)
TEST_PROC(1750, 175.000000)
TEST_PROC(1755, 175.500000)
TEST_PROC(1760, 176.000000)
TEST_PROC(1765, 176.500000)
TEST_PROC(1770, 177.000000)
TEST_PROC(1775, 177.500000)
TEST_PROC(1780, 178.000000)
TEST_PROC(1785, 178.500000)
TEST_PROC(1790, 179.000000)
TEST_PROC(1795, 179.500000)
TEST_PROC(1800, 180.000000)
TEST_PROC(1805, 180.500000)
TEST_PROC(1810, 181.000000)
TEST_PROC(1815, 181.500000)
TEST_PROC(1820, 182.000000)
TEST_PROC(1825, 182.500000)
TEST_PROC(1830, 183.000000)
TEST_PROC(1835, 183.500000)
TEST_PROC(1840, 184.000000)
TEST_PROC(1845, 184.500000)
TEST_PROC(1850, 185.000000)
TEST_PROC(1855, 185.500000)
TEST_PROC(1860, 186.000000)
TEST_PROC(1865, 186.500000)
TEST_PROC(1870, 187.000000)
TEST_PROC(1875, 187.500000)
TEST_PROC(1880, 188.000000)
TEST_PROC(1885, 188.500000)
TEST_PROC(1890, 189.000000)
TEST_PROC(1895, 189.500000)
TEST_PROC(1900, 190.000000)
TEST_PROC(1905, 190.500000)
TEST_PROC(1910, 191.000000)
TEST_PROC(1915, 191.500000)
TEST_PROC(1920, 192.000000)
TEST_PROC(1925, 192.500000)
TEST_PROC(1930, 193.000000)
TEST_PROC(1935, 193.500000)
TEST_PROC(1940, 194.000000)
TEST_PROC(1945, 194.500000)
TEST_PROC(1950, 195.000000)
TEST_PROC(1955, 195.500000)
TEST_PROC(1960, 196.000000)
TEST_PROC(1965, 196.500000)
TEST_PROC(1970, 197.000000)
TEST_PROC(1975, 197.500000)
TEST_PROC(1980, 198.000000)
TEST_PROC(1985, 198.500000)
TEST_PROC(1990, 199.000000)
TEST_PROC(1995, 199.500000)
TEST_PROC(2000, 200.000000)
TEST_PROC(2005, 200.500000)

const test_t input[NUM_TESTS] = {-1000000001.0, -100001.0, -1005.0, -0.5, -0.0,
                                 1000000001.0,  100001.0,  1005.0,  0.5,  0.0};

int main(void) {
  test_powm2005(input);
  test_powm2000(input);
  test_powm1995(input);
  test_powm1990(input);
  test_powm1985(input);
  test_powm1980(input);
  test_powm1975(input);
  test_powm1970(input);
  test_powm1965(input);
  test_powm1960(input);
  test_powm1955(input);
  test_powm1950(input);
  test_powm1945(input);
  test_powm1940(input);
  test_powm1935(input);
  test_powm1930(input);
  test_powm1925(input);
  test_powm1920(input);
  test_powm1915(input);
  test_powm1910(input);
  test_powm1905(input);
  test_powm1900(input);
  test_powm1895(input);
  test_powm1890(input);
  test_powm1885(input);
  test_powm1880(input);
  test_powm1875(input);
  test_powm1870(input);
  test_powm1865(input);
  test_powm1860(input);
  test_powm1855(input);
  test_powm1850(input);
  test_powm1845(input);
  test_powm1840(input);
  test_powm1835(input);
  test_powm1830(input);
  test_powm1825(input);
  test_powm1820(input);
  test_powm1815(input);
  test_powm1810(input);
  test_powm1805(input);
  test_powm1800(input);
  test_powm1795(input);
  test_powm1790(input);
  test_powm1785(input);
  test_powm1780(input);
  test_powm1775(input);
  test_powm1770(input);
  test_powm1765(input);
  test_powm1760(input);
  test_powm1755(input);
  test_powm1750(input);
  test_powm1745(input);
  test_powm1740(input);
  test_powm1735(input);
  test_powm1730(input);
  test_powm1725(input);
  test_powm1720(input);
  test_powm1715(input);
  test_powm1710(input);
  test_powm1705(input);
  test_powm1700(input);
  test_powm1695(input);
  test_powm1690(input);
  test_powm1685(input);
  test_powm1680(input);
  test_powm1675(input);
  test_powm1670(input);
  test_powm1665(input);
  test_powm1660(input);
  test_powm1655(input);
  test_powm1650(input);
  test_powm1645(input);
  test_powm1640(input);
  test_powm1635(input);
  test_powm1630(input);
  test_powm1625(input);
  test_powm1620(input);
  test_powm1615(input);
  test_powm1610(input);
  test_powm1605(input);
  test_powm1600(input);
  test_powm1595(input);
  test_powm1590(input);
  test_powm1585(input);
  test_powm1580(input);
  test_powm1575(input);
  test_powm1570(input);
  test_powm1565(input);
  test_powm1560(input);
  test_powm1555(input);
  test_powm1550(input);
  test_powm1545(input);
  test_powm1540(input);
  test_powm1535(input);
  test_powm1530(input);
  test_powm1525(input);
  test_powm1520(input);
  test_powm1515(input);
  test_powm1510(input);
  test_powm1505(input);
  test_powm1500(input);
  test_powm1495(input);
  test_powm1490(input);
  test_powm1485(input);
  test_powm1480(input);
  test_powm1475(input);
  test_powm1470(input);
  test_powm1465(input);
  test_powm1460(input);
  test_powm1455(input);
  test_powm1450(input);
  test_powm1445(input);
  test_powm1440(input);
  test_powm1435(input);
  test_powm1430(input);
  test_powm1425(input);
  test_powm1420(input);
  test_powm1415(input);
  test_powm1410(input);
  test_powm1405(input);
  test_powm1400(input);
  test_powm1395(input);
  test_powm1390(input);
  test_powm1385(input);
  test_powm1380(input);
  test_powm1375(input);
  test_powm1370(input);
  test_powm1365(input);
  test_powm1360(input);
  test_powm1355(input);
  test_powm1350(input);
  test_powm1345(input);
  test_powm1340(input);
  test_powm1335(input);
  test_powm1330(input);
  test_powm1325(input);
  test_powm1320(input);
  test_powm1315(input);
  test_powm1310(input);
  test_powm1305(input);
  test_powm1300(input);
  test_powm1295(input);
  test_powm1290(input);
  test_powm1285(input);
  test_powm1280(input);
  test_powm1275(input);
  test_powm1270(input);
  test_powm1265(input);
  test_powm1260(input);
  test_powm1255(input);
  test_powm1250(input);
  test_powm1245(input);
  test_powm1240(input);
  test_powm1235(input);
  test_powm1230(input);
  test_powm1225(input);
  test_powm1220(input);
  test_powm1215(input);
  test_powm1210(input);
  test_powm1205(input);
  test_powm1200(input);
  test_powm1195(input);
  test_powm1190(input);
  test_powm1185(input);
  test_powm1180(input);
  test_powm1175(input);
  test_powm1170(input);
  test_powm1165(input);
  test_powm1160(input);
  test_powm1155(input);
  test_powm1150(input);
  test_powm1145(input);
  test_powm1140(input);
  test_powm1135(input);
  test_powm1130(input);
  test_powm1125(input);
  test_powm1120(input);
  test_powm1115(input);
  test_powm1110(input);
  test_powm1105(input);
  test_powm1100(input);
  test_powm1095(input);
  test_powm1090(input);
  test_powm1085(input);
  test_powm1080(input);
  test_powm1075(input);
  test_powm1070(input);
  test_powm1065(input);
  test_powm1060(input);
  test_powm1055(input);
  test_powm1050(input);
  test_powm1045(input);
  test_powm1040(input);
  test_powm1035(input);
  test_powm1030(input);
  test_powm1025(input);
  test_powm1020(input);
  test_powm1015(input);
  test_powm1010(input);
  test_powm1005(input);
  test_powm1000(input);
  test_powm995(input);
  test_powm990(input);
  test_powm985(input);
  test_powm980(input);
  test_powm975(input);
  test_powm970(input);
  test_powm965(input);
  test_powm960(input);
  test_powm955(input);
  test_powm950(input);
  test_powm945(input);
  test_powm940(input);
  test_powm935(input);
  test_powm930(input);
  test_powm925(input);
  test_powm920(input);
  test_powm915(input);
  test_powm910(input);
  test_powm905(input);
  test_powm900(input);
  test_powm895(input);
  test_powm890(input);
  test_powm885(input);
  test_powm880(input);
  test_powm875(input);
  test_powm870(input);
  test_powm865(input);
  test_powm860(input);
  test_powm855(input);
  test_powm850(input);
  test_powm845(input);
  test_powm840(input);
  test_powm835(input);
  test_powm830(input);
  test_powm825(input);
  test_powm820(input);
  test_powm815(input);
  test_powm810(input);
  test_powm805(input);
  test_powm800(input);
  test_powm795(input);
  test_powm790(input);
  test_powm785(input);
  test_powm780(input);
  test_powm775(input);
  test_powm770(input);
  test_powm765(input);
  test_powm760(input);
  test_powm755(input);
  test_powm750(input);
  test_powm745(input);
  test_powm740(input);
  test_powm735(input);
  test_powm730(input);
  test_powm725(input);
  test_powm720(input);
  test_powm715(input);
  test_powm710(input);
  test_powm705(input);
  test_powm700(input);
  test_powm695(input);
  test_powm690(input);
  test_powm685(input);
  test_powm680(input);
  test_powm675(input);
  test_powm670(input);
  test_powm665(input);
  test_powm660(input);
  test_powm655(input);
  test_powm650(input);
  test_powm645(input);
  test_powm640(input);
  test_powm635(input);
  test_powm630(input);
  test_powm625(input);
  test_powm620(input);
  test_powm615(input);
  test_powm610(input);
  test_powm605(input);
  test_powm600(input);
  test_powm595(input);
  test_powm590(input);
  test_powm585(input);
  test_powm580(input);
  test_powm575(input);
  test_powm570(input);
  test_powm565(input);
  test_powm560(input);
  test_powm555(input);
  test_powm550(input);
  test_powm545(input);
  test_powm540(input);
  test_powm535(input);
  test_powm530(input);
  test_powm525(input);
  test_powm520(input);
  test_powm515(input);
  test_powm510(input);
  test_powm505(input);
  test_powm500(input);
  test_powm495(input);
  test_powm490(input);
  test_powm485(input);
  test_powm480(input);
  test_powm475(input);
  test_powm470(input);
  test_powm465(input);
  test_powm460(input);
  test_powm455(input);
  test_powm450(input);
  test_powm445(input);
  test_powm440(input);
  test_powm435(input);
  test_powm430(input);
  test_powm425(input);
  test_powm420(input);
  test_powm415(input);
  test_powm410(input);
  test_powm405(input);
  test_powm400(input);
  test_powm395(input);
  test_powm390(input);
  test_powm385(input);
  test_powm380(input);
  test_powm375(input);
  test_powm370(input);
  test_powm365(input);
  test_powm360(input);
  test_powm355(input);
  test_powm350(input);
  test_powm345(input);
  test_powm340(input);
  test_powm335(input);
  test_powm330(input);
  test_powm325(input);
  test_powm320(input);
  test_powm315(input);
  test_powm310(input);
  test_powm305(input);
  test_powm300(input);
  test_powm295(input);
  test_powm290(input);
  test_powm285(input);
  test_powm280(input);
  test_powm275(input);
  test_powm270(input);
  test_powm265(input);
  test_powm260(input);
  test_powm255(input);
  test_powm250(input);
  test_powm245(input);
  test_powm240(input);
  test_powm235(input);
  test_powm230(input);
  test_powm225(input);
  test_powm220(input);
  test_powm215(input);
  test_powm210(input);
  test_powm205(input);
  test_powm200(input);
  test_powm195(input);
  test_powm190(input);
  test_powm185(input);
  test_powm180(input);
  test_powm175(input);
  test_powm170(input);
  test_powm165(input);
  test_powm160(input);
  test_powm155(input);
  test_powm150(input);
  test_powm145(input);
  test_powm140(input);
  test_powm135(input);
  test_powm130(input);
  test_powm125(input);
  test_powm120(input);
  test_powm115(input);
  test_powm110(input);
  test_powm105(input);
  test_powm100(input);
  test_powm95(input);
  test_powm90(input);
  test_powm85(input);
  test_powm80(input);
  test_powm75(input);
  test_powm70(input);
  test_powm65(input);
  test_powm60(input);
  test_powm55(input);
  test_powm50(input);
  test_powm45(input);
  test_powm40(input);
  test_powm35(input);
  test_powm30(input);
  test_powm25(input);
  test_powm20(input);
  test_powm15(input);
  test_powm10(input);
  test_powm5(input);
  test_pow0(input);
  test_pow5(input);
  test_pow10(input);
  test_pow15(input);
  test_pow20(input);
  test_pow25(input);
  test_pow30(input);
  test_pow35(input);
  test_pow40(input);
  test_pow45(input);
  test_pow50(input);
  test_pow55(input);
  test_pow60(input);
  test_pow65(input);
  test_pow70(input);
  test_pow75(input);
  test_pow80(input);
  test_pow85(input);
  test_pow90(input);
  test_pow95(input);
  test_pow100(input);
  test_pow105(input);
  test_pow110(input);
  test_pow115(input);
  test_pow120(input);
  test_pow125(input);
  test_pow130(input);
  test_pow135(input);
  test_pow140(input);
  test_pow145(input);
  test_pow150(input);
  test_pow155(input);
  test_pow160(input);
  test_pow165(input);
  test_pow170(input);
  test_pow175(input);
  test_pow180(input);
  test_pow185(input);
  test_pow190(input);
  test_pow195(input);
  test_pow200(input);
  test_pow205(input);
  test_pow210(input);
  test_pow215(input);
  test_pow220(input);
  test_pow225(input);
  test_pow230(input);
  test_pow235(input);
  test_pow240(input);
  test_pow245(input);
  test_pow250(input);
  test_pow255(input);
  test_pow260(input);
  test_pow265(input);
  test_pow270(input);
  test_pow275(input);
  test_pow280(input);
  test_pow285(input);
  test_pow290(input);
  test_pow295(input);
  test_pow300(input);
  test_pow305(input);
  test_pow310(input);
  test_pow315(input);
  test_pow320(input);
  test_pow325(input);
  test_pow330(input);
  test_pow335(input);
  test_pow340(input);
  test_pow345(input);
  test_pow350(input);
  test_pow355(input);
  test_pow360(input);
  test_pow365(input);
  test_pow370(input);
  test_pow375(input);
  test_pow380(input);
  test_pow385(input);
  test_pow390(input);
  test_pow395(input);
  test_pow400(input);
  test_pow405(input);
  test_pow410(input);
  test_pow415(input);
  test_pow420(input);
  test_pow425(input);
  test_pow430(input);
  test_pow435(input);
  test_pow440(input);
  test_pow445(input);
  test_pow450(input);
  test_pow455(input);
  test_pow460(input);
  test_pow465(input);
  test_pow470(input);
  test_pow475(input);
  test_pow480(input);
  test_pow485(input);
  test_pow490(input);
  test_pow495(input);
  test_pow500(input);
  test_pow505(input);
  test_pow510(input);
  test_pow515(input);
  test_pow520(input);
  test_pow525(input);
  test_pow530(input);
  test_pow535(input);
  test_pow540(input);
  test_pow545(input);
  test_pow550(input);
  test_pow555(input);
  test_pow560(input);
  test_pow565(input);
  test_pow570(input);
  test_pow575(input);
  test_pow580(input);
  test_pow585(input);
  test_pow590(input);
  test_pow595(input);
  test_pow600(input);
  test_pow605(input);
  test_pow610(input);
  test_pow615(input);
  test_pow620(input);
  test_pow625(input);
  test_pow630(input);
  test_pow635(input);
  test_pow640(input);
  test_pow645(input);
  test_pow650(input);
  test_pow655(input);
  test_pow660(input);
  test_pow665(input);
  test_pow670(input);
  test_pow675(input);
  test_pow680(input);
  test_pow685(input);
  test_pow690(input);
  test_pow695(input);
  test_pow700(input);
  test_pow705(input);
  test_pow710(input);
  test_pow715(input);
  test_pow720(input);
  test_pow725(input);
  test_pow730(input);
  test_pow735(input);
  test_pow740(input);
  test_pow745(input);
  test_pow750(input);
  test_pow755(input);
  test_pow760(input);
  test_pow765(input);
  test_pow770(input);
  test_pow775(input);
  test_pow780(input);
  test_pow785(input);
  test_pow790(input);
  test_pow795(input);
  test_pow800(input);
  test_pow805(input);
  test_pow810(input);
  test_pow815(input);
  test_pow820(input);
  test_pow825(input);
  test_pow830(input);
  test_pow835(input);
  test_pow840(input);
  test_pow845(input);
  test_pow850(input);
  test_pow855(input);
  test_pow860(input);
  test_pow865(input);
  test_pow870(input);
  test_pow875(input);
  test_pow880(input);
  test_pow885(input);
  test_pow890(input);
  test_pow895(input);
  test_pow900(input);
  test_pow905(input);
  test_pow910(input);
  test_pow915(input);
  test_pow920(input);
  test_pow925(input);
  test_pow930(input);
  test_pow935(input);
  test_pow940(input);
  test_pow945(input);
  test_pow950(input);
  test_pow955(input);
  test_pow960(input);
  test_pow965(input);
  test_pow970(input);
  test_pow975(input);
  test_pow980(input);
  test_pow985(input);
  test_pow990(input);
  test_pow995(input);
  test_pow1000(input);
  test_pow1005(input);
  test_pow1010(input);
  test_pow1015(input);
  test_pow1020(input);
  test_pow1025(input);
  test_pow1030(input);
  test_pow1035(input);
  test_pow1040(input);
  test_pow1045(input);
  test_pow1050(input);
  test_pow1055(input);
  test_pow1060(input);
  test_pow1065(input);
  test_pow1070(input);
  test_pow1075(input);
  test_pow1080(input);
  test_pow1085(input);
  test_pow1090(input);
  test_pow1095(input);
  test_pow1100(input);
  test_pow1105(input);
  test_pow1110(input);
  test_pow1115(input);
  test_pow1120(input);
  test_pow1125(input);
  test_pow1130(input);
  test_pow1135(input);
  test_pow1140(input);
  test_pow1145(input);
  test_pow1150(input);
  test_pow1155(input);
  test_pow1160(input);
  test_pow1165(input);
  test_pow1170(input);
  test_pow1175(input);
  test_pow1180(input);
  test_pow1185(input);
  test_pow1190(input);
  test_pow1195(input);
  test_pow1200(input);
  test_pow1205(input);
  test_pow1210(input);
  test_pow1215(input);
  test_pow1220(input);
  test_pow1225(input);
  test_pow1230(input);
  test_pow1235(input);
  test_pow1240(input);
  test_pow1245(input);
  test_pow1250(input);
  test_pow1255(input);
  test_pow1260(input);
  test_pow1265(input);
  test_pow1270(input);
  test_pow1275(input);
  test_pow1280(input);
  test_pow1285(input);
  test_pow1290(input);
  test_pow1295(input);
  test_pow1300(input);
  test_pow1305(input);
  test_pow1310(input);
  test_pow1315(input);
  test_pow1320(input);
  test_pow1325(input);
  test_pow1330(input);
  test_pow1335(input);
  test_pow1340(input);
  test_pow1345(input);
  test_pow1350(input);
  test_pow1355(input);
  test_pow1360(input);
  test_pow1365(input);
  test_pow1370(input);
  test_pow1375(input);
  test_pow1380(input);
  test_pow1385(input);
  test_pow1390(input);
  test_pow1395(input);
  test_pow1400(input);
  test_pow1405(input);
  test_pow1410(input);
  test_pow1415(input);
  test_pow1420(input);
  test_pow1425(input);
  test_pow1430(input);
  test_pow1435(input);
  test_pow1440(input);
  test_pow1445(input);
  test_pow1450(input);
  test_pow1455(input);
  test_pow1460(input);
  test_pow1465(input);
  test_pow1470(input);
  test_pow1475(input);
  test_pow1480(input);
  test_pow1485(input);
  test_pow1490(input);
  test_pow1495(input);
  test_pow1500(input);
  test_pow1505(input);
  test_pow1510(input);
  test_pow1515(input);
  test_pow1520(input);
  test_pow1525(input);
  test_pow1530(input);
  test_pow1535(input);
  test_pow1540(input);
  test_pow1545(input);
  test_pow1550(input);
  test_pow1555(input);
  test_pow1560(input);
  test_pow1565(input);
  test_pow1570(input);
  test_pow1575(input);
  test_pow1580(input);
  test_pow1585(input);
  test_pow1590(input);
  test_pow1595(input);
  test_pow1600(input);
  test_pow1605(input);
  test_pow1610(input);
  test_pow1615(input);
  test_pow1620(input);
  test_pow1625(input);
  test_pow1630(input);
  test_pow1635(input);
  test_pow1640(input);
  test_pow1645(input);
  test_pow1650(input);
  test_pow1655(input);
  test_pow1660(input);
  test_pow1665(input);
  test_pow1670(input);
  test_pow1675(input);
  test_pow1680(input);
  test_pow1685(input);
  test_pow1690(input);
  test_pow1695(input);
  test_pow1700(input);
  test_pow1705(input);
  test_pow1710(input);
  test_pow1715(input);
  test_pow1720(input);
  test_pow1725(input);
  test_pow1730(input);
  test_pow1735(input);
  test_pow1740(input);
  test_pow1745(input);
  test_pow1750(input);
  test_pow1755(input);
  test_pow1760(input);
  test_pow1765(input);
  test_pow1770(input);
  test_pow1775(input);
  test_pow1780(input);
  test_pow1785(input);
  test_pow1790(input);
  test_pow1795(input);
  test_pow1800(input);
  test_pow1805(input);
  test_pow1810(input);
  test_pow1815(input);
  test_pow1820(input);
  test_pow1825(input);
  test_pow1830(input);
  test_pow1835(input);
  test_pow1840(input);
  test_pow1845(input);
  test_pow1850(input);
  test_pow1855(input);
  test_pow1860(input);
  test_pow1865(input);
  test_pow1870(input);
  test_pow1875(input);
  test_pow1880(input);
  test_pow1885(input);
  test_pow1890(input);
  test_pow1895(input);
  test_pow1900(input);
  test_pow1905(input);
  test_pow1910(input);
  test_pow1915(input);
  test_pow1920(input);
  test_pow1925(input);
  test_pow1930(input);
  test_pow1935(input);
  test_pow1940(input);
  test_pow1945(input);
  test_pow1950(input);
  test_pow1955(input);
  test_pow1960(input);
  test_pow1965(input);
  test_pow1970(input);
  test_pow1975(input);
  test_pow1980(input);
  test_pow1985(input);
  test_pow1990(input);
  test_pow1995(input);
  test_pow2000(input);
  test_pow2005(input);

  printf("PASS\n");

  return 0;
}
