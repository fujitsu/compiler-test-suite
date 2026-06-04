#include <stdlib.h>
extern signed int v1 (signed char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (signed char, unsigned char, unsigned char, unsigned int);
signed int v3 (signed int, signed int, unsigned char);
signed int (*v4) (signed int, signed int, unsigned char) = v3;
extern void v5 (unsigned short, signed short, signed char);
extern void (*v6) (unsigned short, signed short, signed char);
extern signed int v7 (unsigned short, signed short, signed char);
extern signed int (*v8) (unsigned short, signed short, signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
signed char v13 (unsigned int, unsigned char);
signed char (*v14) (unsigned int, unsigned char) = v13;
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (unsigned char, unsigned short, signed int, signed char);
extern unsigned int (*v20) (unsigned char, unsigned short, signed int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (signed char, signed int, signed short);
extern signed short (*v24) (signed char, signed int, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned int v29 (signed short, unsigned char, signed int, signed short);
unsigned int (*v30) (signed short, unsigned char, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 1U;
unsigned short v93 = 5;
signed short v92 = 3;

unsigned int v29 (signed short v95, unsigned char v96, signed int v97, signed short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 3U;
signed char v100 = 0;
unsigned int v99 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned short v104 = 3;
signed short v103 = 3;
signed char v102 = 2;
trace++;
switch (trace)
{
case 9: 
{
signed short v105;
v105 = v17 ();
history[history_index++] = (int)v105;
}
break;
case 13: 
return v103;
default: abort ();
}
}
}
}

signed char v13 (unsigned int v106, unsigned char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 0;
signed char v109 = 1;
unsigned int v108 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v111, signed int v112, unsigned char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = 1;
signed char v115 = -4;
unsigned char v114 = 4;
trace++;
switch (trace)
{
case 1: 
return v112;
case 7: 
{
signed char v117;
v117 = v9 ();
history[history_index++] = (int)v117;
}
break;
case 15: 
return v111;
default: abort ();
}
}
}
}
