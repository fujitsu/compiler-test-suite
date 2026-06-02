#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short v7 (unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, signed short);
unsigned char v9 (signed char, unsigned short, signed short);
unsigned char (*v10) (signed char, unsigned short, signed short) = v9;
extern signed char v11 (signed short, unsigned short, unsigned int);
extern signed char (*v12) (signed short, unsigned short, unsigned int);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
void v15 (void);
void (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (unsigned char, unsigned short, unsigned char, unsigned char);
extern unsigned int (*v20) (unsigned char, unsigned short, unsigned char, unsigned char);
extern signed short v21 (unsigned int, signed short, unsigned int);
extern signed short (*v22) (unsigned int, signed short, unsigned int);
extern unsigned short v23 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned short, unsigned char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
signed short v27 (unsigned short);
signed short (*v28) (unsigned short) = v27;
extern unsigned int v29 (signed char, signed int, unsigned int);
extern unsigned int (*v30) (signed char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -3;
signed char v67 = 2;
unsigned char v66 = 5;

signed short v27 (unsigned short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 1U;
signed short v71 = -4;
unsigned int v70 = 0U;
trace++;
switch (trace)
{
case 9: 
return v71;
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed char v75 = -1;
unsigned short v74 = 2;
signed char v73 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v76, unsigned short v77, signed short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 1;
signed int v80 = 2;
unsigned short v79 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
