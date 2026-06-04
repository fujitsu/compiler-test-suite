#include <stdlib.h>
signed int v1 (unsigned short);
signed int (*v2) (unsigned short) = v1;
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
unsigned char v7 (signed char, signed char, unsigned char);
unsigned char (*v8) (signed char, signed char, unsigned char) = v7;
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
extern signed int v25 (signed int, signed char);
extern signed int (*v26) (signed int, signed char);
extern unsigned int v27 (unsigned char, signed char, signed short, signed char);
extern unsigned int (*v28) (unsigned char, signed char, signed short, signed char);
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v103 = 0;
signed int v102 = -3;
unsigned int v101 = 4U;

unsigned char v7 (signed char v104, signed char v105, unsigned char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 3;
unsigned int v108 = 0U;
unsigned short v107 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -3;
signed int v112 = -3;
signed char v111 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v114;
v114 = v21 ();
history[history_index++] = (int)v114;
}
break;
case 4: 
{
signed short v115;
unsigned char v116;
signed short v117;
v115 = -2 - -1;
v116 = 0 + 4;
v117 = v3 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 12: 
return v112;
default: abort ();
}
}
}
}
