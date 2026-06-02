#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (signed short, unsigned int, unsigned char, signed short);
extern void (*v4) (signed short, unsigned int, unsigned char, signed short);
extern void v5 (unsigned short, signed short, signed int);
extern void (*v6) (unsigned short, signed short, signed int);
signed char v7 (unsigned char);
signed char (*v8) (unsigned char) = v7;
extern signed char v9 (signed char, signed char, unsigned short, signed char);
extern signed char (*v10) (signed char, signed char, unsigned short, signed char);
extern signed char v11 (unsigned short, signed short, unsigned char);
extern signed char (*v12) (unsigned short, signed short, unsigned char);
extern unsigned short v13 (unsigned short, signed int);
extern unsigned short (*v14) (unsigned short, signed int);
extern unsigned int v15 (signed int, signed int, unsigned char);
extern unsigned int (*v16) (signed int, signed int, unsigned char);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern unsigned short v19 (unsigned int, unsigned short, signed char);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char);
extern unsigned char v21 (unsigned int);
extern unsigned char (*v22) (unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
void v25 (void);
void (*v26) (void) = v25;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v72 = 0;
signed int v71 = -2;
unsigned char v70 = 0;

void v25 (void)
{
{
for (;;) {
unsigned int v75 = 3U;
unsigned short v74 = 7;
signed short v73 = -2;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
default: abort ();
}
}
}
}

signed char v7 (unsigned char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = 2;
signed char v78 = -3;
unsigned short v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
