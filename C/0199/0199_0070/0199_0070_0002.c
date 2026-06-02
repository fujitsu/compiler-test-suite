#include <stdlib.h>
unsigned char v1 (unsigned int, signed char, signed int, signed int);
unsigned char (*v2) (unsigned int, signed char, signed int, signed int) = v1;
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern void v5 (unsigned int, unsigned char, unsigned int);
extern void (*v6) (unsigned int, unsigned char, unsigned int);
extern unsigned short v7 (signed short, signed short, unsigned char);
extern unsigned short (*v8) (signed short, signed short, unsigned char);
extern void v9 (signed short, unsigned int, signed char, unsigned char);
extern void (*v10) (signed short, unsigned int, signed char, unsigned char);
extern signed short v11 (void);
extern signed short (*v12) (void);
signed short v13 (signed char);
signed short (*v14) (signed char) = v13;
extern void v15 (unsigned short, unsigned char, signed char, unsigned char);
extern void (*v16) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern signed int v21 (signed int, unsigned int);
extern signed int (*v22) (signed int, unsigned int);
extern signed char v23 (unsigned char, unsigned int, unsigned int, unsigned int);
extern signed char (*v24) (unsigned char, unsigned int, unsigned int, unsigned int);
extern void v27 (unsigned int, signed char, unsigned int);
extern void (*v28) (unsigned int, signed char, unsigned int);
extern unsigned short v29 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned short (*v30) (unsigned char, unsigned short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v69 = 1;
signed char v68 = -1;
unsigned short v67 = 4;

signed short v13 (signed char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = 1;
signed short v72 = 1;
unsigned char v71 = 7;
trace++;
switch (trace)
{
case 9: 
{
signed int v74;
unsigned int v75;
signed int v76;
v74 = 2 - 2;
v75 = 7U - 1U;
v76 = v21 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 13: 
return v72;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v77, signed char v78, signed int v79, signed int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -4;
signed int v82 = 3;
signed short v81 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v84;
signed char v85;
unsigned int v86;
v84 = v77 - 2U;
v85 = -1 - -3;
v86 = 0U + v77;
v27 (v84, v85, v86);
}
break;
case 16: 
return 4;
default: abort ();
}
}
}
}
