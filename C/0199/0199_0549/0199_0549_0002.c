#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
extern unsigned short v7 (signed short, unsigned short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned short, unsigned int);
extern signed char v9 (unsigned short, signed char);
extern signed char (*v10) (unsigned short, signed char);
extern signed int v11 (signed char, unsigned char);
extern signed int (*v12) (signed char, unsigned char);
extern unsigned char v13 (signed int, signed int, unsigned short, signed short);
extern unsigned char (*v14) (signed int, signed int, unsigned short, signed short);
extern signed char v15 (unsigned int, signed int, unsigned short);
extern signed char (*v16) (unsigned int, signed int, unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (signed int, unsigned int, signed int);
extern void (*v24) (signed int, unsigned int, signed int);
signed char v25 (signed int, signed int, unsigned int, unsigned short);
signed char (*v26) (signed int, signed int, unsigned int, unsigned short) = v25;
extern unsigned char v27 (signed int, signed short, unsigned char, signed int);
extern unsigned char (*v28) (signed int, signed short, unsigned char, signed int);
extern unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v102 = 6U;
signed char v101 = -3;
unsigned short v100 = 6;

signed char v25 (signed int v103, signed int v104, unsigned int v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -3;
signed int v108 = 1;
unsigned char v107 = 0;
trace++;
switch (trace)
{
case 5: 
return v109;
case 7: 
return v109;
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed short v112 = 1;
signed short v111 = 1;
unsigned char v110 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v113;
signed int v114;
unsigned short v115;
signed char v116;
v113 = 5U + 0U;
v114 = -3 + 0;
v115 = 3 - 5;
v116 = v15 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 2: 
{
unsigned int v117;
signed int v118;
unsigned short v119;
signed char v120;
v117 = 3U - 7U;
v118 = 0 + -1;
v119 = 1 - 7;
v120 = v15 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 10: 
{
signed int v121;
unsigned int v122;
signed int v123;
v121 = 0 - 2;
v122 = 7U - 4U;
v123 = 0 - -2;
v23 (v121, v122, v123);
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}
