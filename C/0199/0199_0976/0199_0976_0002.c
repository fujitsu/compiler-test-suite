#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
extern signed short v9 (signed char, signed char, signed short);
extern signed short (*v10) (signed char, signed char, signed short);
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned int v15 (signed char, signed int, signed int);
unsigned int (*v16) (signed char, signed int, signed int) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern void v21 (unsigned short, unsigned int, signed int);
extern void (*v22) (unsigned short, unsigned int, signed int);
extern unsigned short v23 (signed char, signed int, unsigned int, unsigned int);
extern unsigned short (*v24) (signed char, signed int, unsigned int, unsigned int);
extern signed short v25 (signed char, signed short, signed int);
extern signed short (*v26) (signed char, signed short, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = 0;
unsigned short v76 = 1;
unsigned int v75 = 7U;

unsigned int v15 (signed char v78, signed int v79, signed int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 2;
unsigned int v82 = 6U;
signed char v81 = 2;
trace++;
switch (trace)
{
case 9: 
{
signed char v84;
signed int v85;
unsigned int v86;
unsigned int v87;
unsigned short v88;
v84 = -3 - v83;
v85 = v79 + v80;
v86 = 6U - v82;
v87 = 0U + v82;
v88 = v23 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 11: 
return 3U;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned int v91 = 0U;
unsigned short v90 = 5;
unsigned short v89 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v92;
v92 = v29 ();
history[history_index++] = (int)v92;
}
break;
case 2: 
{
unsigned char v93;
unsigned short v94;
unsigned short v95;
unsigned char v96;
unsigned short v97;
v93 = 2 + 4;
v94 = 3 - v89;
v95 = v89 - 7;
v96 = 1 - 4;
v97 = v5 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
