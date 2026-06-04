#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed short);
extern signed short (*v2) (signed int, signed short, signed short);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned short v9 (signed int);
unsigned short (*v10) (signed int) = v9;
extern void v11 (signed short, unsigned short, unsigned char, unsigned char);
extern void (*v12) (signed short, unsigned short, unsigned char, unsigned char);
extern unsigned short v13 (unsigned short, unsigned char, signed char);
extern unsigned short (*v14) (unsigned short, unsigned char, signed char);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed short v17 (signed short, unsigned short, signed short);
extern signed short (*v18) (signed short, unsigned short, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (unsigned short, unsigned int, signed int);
extern unsigned short (*v22) (unsigned short, unsigned int, signed int);
extern unsigned char v23 (unsigned int, unsigned int);
extern unsigned char (*v24) (unsigned int, unsigned int);
extern signed char v25 (unsigned int, unsigned short, signed int, signed short);
extern signed char (*v26) (unsigned int, unsigned short, signed int, signed short);
extern signed char v27 (unsigned short, signed short, unsigned char);
extern signed char (*v28) (unsigned short, signed short, unsigned char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = 2;
signed int v88 = 1;
signed int v87 = 3;

signed int v15 (void)
{
{
for (;;) {
signed int v92 = -2;
signed char v91 = -4;
unsigned int v90 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 6U;
unsigned int v95 = 2U;
signed int v94 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v97;
unsigned char v98;
signed char v99;
unsigned short v100;
v97 = 5 + 3;
v98 = 7 - 2;
v99 = 0 + -2;
v100 = v13 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 7: 
return 0;
case 10: 
{
signed short v101;
unsigned short v102;
signed short v103;
signed short v104;
v101 = 3 + 2;
v102 = 2 + 2;
v103 = 2 - -3;
v104 = v17 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
