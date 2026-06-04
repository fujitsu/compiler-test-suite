#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v6) (unsigned int, signed int, unsigned short, unsigned int);
extern unsigned int v7 (unsigned int, signed int, signed int, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed int, signed int);
extern unsigned short v9 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned short (*v10) (unsigned int, unsigned short, signed short, unsigned short);
signed short v11 (unsigned int, signed char, signed char, unsigned char);
signed short (*v12) (unsigned int, signed char, signed char, unsigned char) = v11;
unsigned short v13 (signed int, signed int, unsigned char);
unsigned short (*v14) (signed int, signed int, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned int, signed char, unsigned int);
extern void (*v18) (unsigned int, signed char, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned short, signed char);
extern signed int (*v22) (unsigned short, signed char);
unsigned int v23 (unsigned int);
unsigned int (*v24) (unsigned int) = v23;
extern unsigned char v25 (unsigned short, unsigned int);
extern unsigned char (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern unsigned char v29 (unsigned char, signed int, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v92 = 3;
signed short v91 = -3;
unsigned char v90 = 3;

unsigned int v23 (unsigned int v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 3;
signed short v95 = -1;
unsigned short v94 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed int v97, signed int v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 6;
signed int v101 = -3;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v103;
signed int v104;
unsigned int v105;
signed short v106;
unsigned char v107;
v103 = v99 - 3;
v104 = v98 - -4;
v105 = v100 + v100;
v106 = 2 - -2;
v107 = v29 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 7: 
{
unsigned char v108;
signed int v109;
unsigned int v110;
signed short v111;
unsigned char v112;
v108 = 6 - 5;
v109 = v101 - v98;
v110 = 3U - v100;
v111 = 0 - -3;
v112 = v29 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 9: 
{
unsigned char v113;
signed int v114;
unsigned int v115;
signed short v116;
unsigned char v117;
v113 = 4 + 5;
v114 = v98 + v97;
v115 = 1U - v100;
v116 = -4 + 0;
v117 = v29 (v113, v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v118, signed char v119, signed char v120, unsigned char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 0;
unsigned char v123 = 0;
signed int v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
