#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned char, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (unsigned char, unsigned int, unsigned char);
extern signed int (*v12) (unsigned char, unsigned int, unsigned char);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
extern signed int v17 (signed short, unsigned char);
extern signed int (*v18) (signed short, unsigned char);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
void v23 (signed char, signed char, unsigned char);
void (*v24) (signed char, signed char, unsigned char) = v23;
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned char v27 (signed char, signed int);
extern unsigned char (*v28) (signed char, signed int);
extern signed char v29 (unsigned char, unsigned int, unsigned short);
extern signed char (*v30) (unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v52 = 6;
unsigned short v51 = 7;
unsigned char v50 = 2;

void v23 (signed char v53, signed char v54, unsigned char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -3;
signed int v57 = -4;
signed char v56 = -1;
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

signed char v3 (void)
{
{
for (;;) {
unsigned short v61 = 0;
unsigned int v60 = 2U;
unsigned int v59 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
