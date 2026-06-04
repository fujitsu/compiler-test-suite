#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, unsigned short, signed short);
extern signed int (*v2) (unsigned char, unsigned short, unsigned short, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (unsigned char, signed short);
extern unsigned short (*v10) (unsigned char, signed short);
extern unsigned int v11 (signed int, signed char);
extern unsigned int (*v12) (signed int, signed char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
extern signed int v17 (signed int, signed char, signed char);
extern signed int (*v18) (signed int, signed char, signed char);
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
extern void v21 (unsigned char, signed char, signed short);
extern void (*v22) (unsigned char, signed char, signed short);
unsigned short v23 (signed short, signed int);
unsigned short (*v24) (signed short, signed int) = v23;
void v25 (signed short, unsigned short, unsigned char);
void (*v26) (signed short, unsigned short, unsigned char) = v25;
extern unsigned char v27 (unsigned short, unsigned char, signed short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned char, signed short, unsigned int);
extern signed short v29 (signed char, signed char, signed short, unsigned short);
extern signed short (*v30) (signed char, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v52 = 4U;
signed char v51 = 0;
signed char v50 = -2;

void v25 (signed short v53, unsigned short v54, unsigned char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 3;
signed short v57 = 3;
unsigned int v56 = 4U;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

unsigned short v23 (signed short v59, signed int v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -4;
unsigned char v62 = 1;
signed char v61 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
