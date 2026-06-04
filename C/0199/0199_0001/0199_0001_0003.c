#include <stdlib.h>
extern signed int v1 (signed short, signed char, unsigned short);
extern signed int (*v2) (signed short, signed char, unsigned short);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed short v11 (signed int, unsigned short);
extern signed short (*v12) (signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
signed short v19 (signed char, signed char, unsigned char, signed int);
signed short (*v20) (signed char, signed char, unsigned char, signed int) = v19;
extern signed short v21 (signed int, unsigned char, unsigned char, unsigned char);
extern signed short (*v22) (signed int, unsigned char, unsigned char, unsigned char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned short v25 (unsigned char, signed short, signed char);
extern unsigned short (*v26) (unsigned char, signed short, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 6U;
signed char v102 = -2;
signed short v101 = -3;

signed short v19 (signed char v104, signed char v105, unsigned char v106, signed int v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 2;
unsigned int v109 = 2U;
signed short v108 = -3;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v111;
unsigned short v112;
unsigned char v113;
v111 = 6 + v106;
v112 = 1 - 1;
v113 = v29 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 6: 
{
unsigned char v114;
unsigned short v115;
unsigned char v116;
v114 = 4 - 3;
v115 = 5 + 0;
v116 = v29 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 8: 
return 2;
default: abort ();
}
}
}
}
