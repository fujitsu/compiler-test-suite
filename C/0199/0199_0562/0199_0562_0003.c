#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned short v7 (unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned char, unsigned char);
unsigned char v9 (unsigned int);
unsigned char (*v10) (unsigned int) = v9;
extern unsigned char v11 (signed char, signed char, signed int, unsigned short);
extern unsigned char (*v12) (signed char, signed char, signed int, unsigned short);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
void v17 (signed int, signed int);
void (*v18) (signed int, signed int) = v17;
extern signed int v19 (signed char, signed int, signed short, unsigned int);
extern signed int (*v20) (signed char, signed int, signed short, unsigned int);
extern signed char v21 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, unsigned int, signed char, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned char v25 (unsigned int, signed int, signed short, unsigned int);
extern unsigned char (*v26) (unsigned int, signed int, signed short, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned char, signed short, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = 0;
signed int v100 = -1;
unsigned short v99 = 3;

void v17 (signed int v102, signed int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 5U;
signed char v105 = -1;
unsigned char v104 = 0;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = 2;
unsigned short v109 = 5;
signed int v108 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
