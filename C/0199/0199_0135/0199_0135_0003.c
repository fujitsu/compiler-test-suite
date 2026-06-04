#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed int);
extern unsigned char (*v2) (unsigned short, signed int);
extern signed int v3 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed int (*v4) (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned char v9 (unsigned short, signed short);
unsigned char (*v10) (unsigned short, signed short) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
signed char v17 (signed short);
signed char (*v18) (signed short) = v17;
extern void v19 (signed short);
extern void (*v20) (signed short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern signed short v25 (signed char, unsigned short);
extern signed short (*v26) (signed char, unsigned short);
extern unsigned char v27 (signed char);
extern unsigned char (*v28) (signed char);
void v29 (unsigned char, signed int);
void (*v30) (unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -1;
signed char v67 = 1;
signed int v66 = 3;

void v29 (unsigned char v69, signed int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 2;
unsigned int v72 = 1U;
signed short v71 = -3;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

signed char v17 (signed short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 3U;
signed char v76 = 2;
signed char v75 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v78, signed short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = -2;
unsigned int v81 = 3U;
signed int v80 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
