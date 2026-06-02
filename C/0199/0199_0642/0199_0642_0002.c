#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned int, unsigned char);
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed int v7 (unsigned short, unsigned char, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (signed int, signed int, unsigned char, signed short);
extern unsigned char (*v12) (signed int, signed int, unsigned char, signed short);
extern void v13 (unsigned int, signed short, signed short, signed char);
extern void (*v14) (unsigned int, signed short, signed short, signed char);
signed char v15 (signed short, signed short);
signed char (*v16) (signed short, signed short) = v15;
signed char v17 (unsigned short, signed int, unsigned int);
signed char (*v18) (unsigned short, signed int, unsigned int) = v17;
extern signed char v19 (unsigned char, unsigned int, signed int, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int, signed int, unsigned int);
extern signed int v21 (signed char, unsigned int, signed int);
extern signed int (*v22) (signed char, unsigned int, signed int);
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v101 = 0;
unsigned char v100 = 4;
unsigned char v99 = 6;

signed char v17 (unsigned short v102, signed int v103, unsigned int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 1;
signed char v106 = 2;
unsigned char v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed short v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 1;
signed short v111 = 3;
signed int v110 = -1;
trace++;
switch (trace)
{
case 1: 
return -4;
case 3: 
return 0;
case 5: 
return -1;
default: abort ();
}
}
}
}
