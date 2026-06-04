#include <stdlib.h>
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern void v7 (signed char, signed char);
extern void (*v8) (signed char, signed char);
void v9 (unsigned int, unsigned char, signed int, signed int);
void (*v10) (unsigned int, unsigned char, signed int, signed int) = v9;
extern unsigned int v11 (signed short, signed char);
extern unsigned int (*v12) (signed short, signed char);
void v13 (unsigned char);
void (*v14) (unsigned char) = v13;
extern signed int v15 (signed int, signed char, unsigned short, unsigned char);
extern signed int (*v16) (signed int, signed char, unsigned short, unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (unsigned int, signed short, unsigned short);
extern void (*v26) (unsigned int, signed short, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed char, unsigned int);
extern unsigned short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v67 = 3U;
unsigned int v66 = 1U;
signed char v65 = 2;

void v13 (unsigned char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 3;
signed int v70 = 1;
unsigned char v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v72, unsigned char v73, signed int v74, signed int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 7;
unsigned char v77 = 6;
unsigned char v76 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
