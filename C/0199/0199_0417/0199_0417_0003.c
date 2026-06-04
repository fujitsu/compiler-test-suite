#include <stdlib.h>
unsigned int v1 (signed short, signed char, unsigned short, signed int);
unsigned int (*v2) (signed short, signed char, unsigned short, signed int) = v1;
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed char, signed char, signed char, signed short);
extern unsigned int (*v8) (signed char, signed char, signed char, signed short);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern unsigned short v11 (signed int, signed int);
extern unsigned short (*v12) (signed int, signed int);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed int, unsigned char, unsigned short, signed int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v20) (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed char, signed int, signed int);
extern unsigned int (*v24) (signed char, signed int, signed int);
unsigned int v25 (unsigned short, unsigned short, signed char, unsigned int);
unsigned int (*v26) (unsigned short, unsigned short, signed char, unsigned int) = v25;
extern unsigned char v27 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned char, unsigned int);
extern unsigned int v29 (signed char, signed int, unsigned int, unsigned char);
extern unsigned int (*v30) (signed char, signed int, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 1;
unsigned int v103 = 0U;
signed short v102 = 0;

unsigned int v25 (unsigned short v105, unsigned short v106, signed char v107, unsigned int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = -2;
unsigned int v110 = 7U;
signed char v109 = -3;
trace++;
switch (trace)
{
case 2: 
return 1U;
case 4: 
return 3U;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned int v1 (signed short v112, signed char v113, unsigned short v114, signed int v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 5;
unsigned char v117 = 7;
unsigned short v116 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v119;
signed int v120;
v119 = v117 + 2;
v120 = v13 (v119);
history[history_index++] = (int)v120;
}
break;
case 6: 
{
signed char v121;
signed char v122;
signed char v123;
signed short v124;
unsigned int v125;
v121 = v113 - v113;
v122 = v113 - 0;
v123 = v113 - 0;
v124 = -4 - 3;
v125 = v7 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 8: 
{
unsigned short v126;
v126 = v17 ();
history[history_index++] = (int)v126;
}
break;
case 14: 
return 7U;
default: abort ();
}
}
}
}
