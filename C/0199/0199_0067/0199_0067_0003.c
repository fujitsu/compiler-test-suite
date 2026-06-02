#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern void v3 (unsigned char, unsigned short, signed int);
extern void (*v4) (unsigned char, unsigned short, signed int);
extern unsigned int v5 (signed int, signed int, signed short, unsigned int);
extern unsigned int (*v6) (signed int, signed int, signed short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern void v17 (signed short, unsigned int, unsigned int, signed short);
extern void (*v18) (signed short, unsigned int, unsigned int, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed int v21 (void);
signed int (*v22) (void) = v21;
signed short v23 (unsigned char, unsigned char, signed char);
signed short (*v24) (unsigned char, unsigned char, signed char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed char v29 (signed short, signed char, unsigned int, signed char);
extern signed char (*v30) (signed short, signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v103 = 0;
signed char v102 = 3;
unsigned char v101 = 3;

signed short v23 (unsigned char v104, unsigned char v105, signed char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 6;
unsigned int v108 = 3U;
unsigned int v107 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed char v112 = -3;
signed short v111 = -3;
signed short v110 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed short v113;
signed char v114;
unsigned int v115;
signed char v116;
signed char v117;
v113 = v110 - v110;
v114 = -2 + 3;
v115 = 7U + 2U;
v116 = 3 - v112;
v117 = v29 (v113, v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 6: 
return -3;
default: abort ();
}
}
}
}
