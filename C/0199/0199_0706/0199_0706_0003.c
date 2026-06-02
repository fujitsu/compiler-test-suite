#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, unsigned short);
extern signed char (*v6) (unsigned char, unsigned short);
extern unsigned char v7 (signed char, signed short, signed int, unsigned int);
extern unsigned char (*v8) (signed char, signed short, signed int, unsigned int);
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (signed int, unsigned int, unsigned char, signed char);
extern signed char (*v14) (signed int, unsigned int, unsigned char, signed char);
extern unsigned short v15 (signed char, signed char);
extern unsigned short (*v16) (signed char, signed char);
extern void v17 (signed int, signed short, signed int);
extern void (*v18) (signed int, signed short, signed int);
extern signed short v19 (signed char, signed char, unsigned short);
extern signed short (*v20) (signed char, signed char, unsigned short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
void v23 (unsigned char, signed short);
void (*v24) (unsigned char, signed short) = v23;
extern signed short v25 (signed int, signed int);
extern signed short (*v26) (signed int, signed int);
unsigned int v27 (unsigned char, unsigned short);
unsigned int (*v28) (unsigned char, unsigned short) = v27;
extern unsigned char v29 (unsigned char, unsigned int);
extern unsigned char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 7;
unsigned int v101 = 7U;
signed char v100 = -3;

unsigned int v27 (unsigned char v103, unsigned short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = 2;
signed int v106 = -1;
unsigned char v105 = 1;
trace++;
switch (trace)
{
case 2: 
return 0U;
case 8: 
return 1U;
default: abort ();
}
}
}
}

void v23 (unsigned char v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 2;
signed int v111 = 2;
unsigned int v110 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
