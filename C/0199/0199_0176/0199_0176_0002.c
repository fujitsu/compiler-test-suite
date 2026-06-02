#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern void v3 (signed char, unsigned short, unsigned short);
extern void (*v4) (signed char, unsigned short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
unsigned char v7 (signed short, unsigned int, signed char, signed short);
unsigned char (*v8) (signed short, unsigned int, signed char, signed short) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned char);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned char);
extern signed short v15 (unsigned short, unsigned int, signed char);
extern signed short (*v16) (unsigned short, unsigned int, signed char);
extern signed int v17 (signed char, signed int, unsigned int, signed short);
extern signed int (*v18) (signed char, signed int, unsigned int, signed short);
extern signed int v19 (signed char, unsigned int, signed char, signed int);
extern signed int (*v20) (signed char, unsigned int, signed char, signed int);
extern signed int v21 (unsigned char, signed char, signed char);
extern signed int (*v22) (unsigned char, signed char, signed char);
extern unsigned int v23 (unsigned char, unsigned char, signed short);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
signed char v27 (unsigned char, signed int, signed short);
signed char (*v28) (unsigned char, signed int, signed short) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v92 = -3;
signed short v91 = -4;
unsigned char v90 = 2;

signed char v27 (unsigned char v93, signed int v94, signed short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 3;
signed char v97 = -2;
signed char v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v99, unsigned int v100, signed char v101, signed short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 4;
unsigned int v104 = 0U;
unsigned char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed char v108 = 2;
signed int v107 = -4;
unsigned char v106 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v109;
signed short v110;
unsigned short v111;
unsigned char v112;
signed int v113;
v109 = 0U + 3U;
v110 = 2 - -2;
v111 = 3 + 6;
v112 = 4 + v106;
v113 = v13 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
