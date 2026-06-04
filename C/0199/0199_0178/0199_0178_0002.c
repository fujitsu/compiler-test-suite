#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
unsigned int v5 (signed char, signed short, signed char, unsigned short);
unsigned int (*v6) (signed char, signed short, signed char, unsigned short) = v5;
extern signed short v7 (unsigned char, signed char);
extern signed short (*v8) (unsigned char, signed char);
extern unsigned short v9 (unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char);
extern unsigned char v11 (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v12) (signed char, unsigned char, unsigned int, unsigned int);
extern signed char v13 (signed char, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short);
extern signed char v15 (signed int, unsigned short);
extern signed char (*v16) (signed int, unsigned short);
unsigned int v17 (unsigned short);
unsigned int (*v18) (unsigned short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (unsigned short, signed int);
extern unsigned int (*v26) (unsigned short, signed int);
unsigned char v27 (signed short, signed int);
unsigned char (*v28) (signed short, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 6U;
unsigned char v93 = 2;
signed short v92 = 1;

unsigned char v27 (signed short v95, signed int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 0;
signed short v98 = -4;
unsigned char v97 = 7;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -2;
unsigned int v102 = 7U;
unsigned short v101 = 7;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v104;
signed int v105;
unsigned int v106;
v104 = 0 + 7;
v105 = 0 + 0;
v106 = v25 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 10: 
{
unsigned short v107;
signed int v108;
unsigned int v109;
v107 = v101 + v100;
v108 = -2 + 2;
v109 = v25 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v5 (signed char v110, signed short v111, signed char v112, unsigned short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -3;
unsigned short v115 = 1;
unsigned short v114 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
