#include <stdlib.h>
unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short) = v1;
signed char v3 (signed short, unsigned short);
signed char (*v4) (signed short, unsigned short) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern void v13 (unsigned int, signed char);
extern void (*v14) (unsigned int, signed char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed short, signed char, signed short, signed short);
extern signed char (*v20) (signed short, signed char, signed short, signed short);
extern signed int v21 (signed char, unsigned int, signed char, signed short);
extern signed int (*v22) (signed char, unsigned int, signed char, signed short);
extern signed char v23 (signed char, signed short, signed short, unsigned short);
extern signed char (*v24) (signed char, signed short, signed short, unsigned short);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
extern signed int v29 (unsigned char);
extern signed int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v98 = 3;
unsigned int v97 = 7U;
signed int v96 = -2;

unsigned char v11 (void)
{
{
for (;;) {
unsigned int v101 = 3U;
signed int v100 = -1;
signed char v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed short v102, unsigned short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 2;
signed int v105 = -2;
signed short v104 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v107, signed char v108, unsigned char v109, signed short v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -4;
unsigned short v112 = 6;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed char v114;
unsigned int v115;
signed char v116;
signed short v117;
signed int v118;
v114 = v108 + v108;
v115 = v111 + 4U;
v116 = v108 - 1;
v117 = -2 + v110;
v118 = v21 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 20: 
return v112;
default: abort ();
}
}
}
}
